class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_locale
  
  private
  
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  private   
  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end
  
  def authorize_admin
    if not current_user.try(:admin?)
      redirect_to root_path
    end
  end
  
end
