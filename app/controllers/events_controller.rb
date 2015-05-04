class EventsController < ApplicationController

  def index
  end

  def show
    @events = Event.find(params[:id])
  end

  def new
    @events = Event.new
    @people = Person.all
  end

  def edit
    @events = Event.find(params[:id])
  end

  def create
    @events = Event.new(event_params)

    if @events.save
      redirect_to @events
    else
      render 'new'
    end
  end

  def update
    @events = Event.find(params[:id])

    if @events.update(event_params)
      redirect_to @events
    else
      render 'edit'
    end
  end

  def destroy
    @events = Event.find(params[:id])
    @events.destroy

    redirect_to event_path
  end

  private
  def event_params
    params.require(:event).permit(:event_date, :place, :description, :person_ids)
  end
end