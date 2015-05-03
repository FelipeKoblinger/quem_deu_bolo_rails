class PersonController < ApplicationController

  def index
    @people = Person.all
  end

  def show
    #@people = People.find(params[:id])
  end

  def new
    @people = Person.new
  end

  def edit
    #@people = People.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end
end
