class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  
  def index
    #@events = Event.all
    @future_events = Event.where (["start >= ?", Time.now]);
    @future_events = @future_events.sort_by &:start
    
    @past_events = Event.where (["start < ?", Time.now]);
    @past_events = (@past_events.sort_by &:start).reverse
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end
  
  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])
    puts @event.musicians

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    authorize_admin
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/1/edit
  def edit
    authorize_admin
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    authorize_admin
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    authorize_admin
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    authorize_admin
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end
end
