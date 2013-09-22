class Event < ActiveRecord::Base
  attr_accessible :description, :end_date, :info_url, :musician_ids, :name, :start_date, :venue_id
  has_and_belongs_to_many :musicians
  belongs_to :venue
  translates :description, :name

  #return the next event, could be nil if nothing is scheduled
  def self.next_event
    future_events = self.where (["end_date >= ?", Time.now])
    if future_events
      future_events = future_events.sort_by(&:start)
      return future_events[0]
    else
      return nil
    end
  end

  def create_duplicate
    #amoeba is meant to do a deep copy for has many relationships
    #but it's not working for musicians or translated fields so have
    #to handle those manually
    new_event = self.amoeba_dup
    new_event.musicians = self.musicians

    current_locale = I18n.locale
    Gigsite::Application::SUPPORTED_LOCALES.each do |locale|
      I18n.locale = locale
      new_event.name = self.name
      new_event.description = self.description
      new_event.save
    end
    I18n.locale = current_locale
    return new_event
  end
end
