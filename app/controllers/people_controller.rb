class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to people_path
    else
      render :new
    end
  end

  def show
    @person = Person.find(params[:id])
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
     @person = Person.find(params[:id])
     if @person.update_attributes(params)
       redirect_to person_path(@person)
     else
       render :edit
     end
  end

  def delete
  end

  private
  def person_params
    params.require(:person).permit(:name, :phone, :address, :email, :twitter, :linkedin)
  end
end
