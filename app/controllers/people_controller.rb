class PeopleController < ApplicationController

  def index
  end

  def show
    @people = Person.find(params[:id])
  end

  def new
    @people = Person.new
  end

  def edit
    @people = Person.find(params[:id])
  end

  def create
    @people = Person.new(person_params)

    if @people.save
      redirect_to @people
    else
      render 'new'
    end
  end

  def update
    @people = Person.find(params[:id])

    if @people.update(person_params)
      redirect_to @people
    else
      render 'edit'
    end
  end

  def destroy
    @people = Person.find(params[:id])
    @people.destroy

    redirect_to people_path
  end

  private
  def person_params
    params.require(:person).permit(:name, :nickname)
  end
end
