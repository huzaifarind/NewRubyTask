class EventsController < ApplicationController
    before_action :set_event, only: [:show, :edit, :update, :destroy]
  
    def index
      @events = Event.all
    end
  
    def new
      @event = Event.new
    end
  
    def create
      @event = Event.new(event_params)
      if @event.save
        redirect_to events_path, notice: "Event created successfully!"
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def show
    end
  
    def edit
    end
  
    def update
      if @event.update(event_params)
        redirect_to events_path, notice: "Event updated successfully!"
      else
        render :edit, status: :unprocessable_entity
      end
    end
  
    def destroy
      @event.destroy
      redirect_to events_path, notice: "Event deleted successfully!"
    end
  
    private
  
    def set_event
      @event = Event.find(params[:id])
    end
  
    def event_params
      params.require(:event).permit(:title, :start_time, :end_time, :description)
    end
  end