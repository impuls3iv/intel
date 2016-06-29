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
     if @person.update_attributes(person_params)
       redirect_to person_path(@person)
     else
       render :edit
     end
  end

  def delete
    @person = Person.find(params[:id])
    if @person.destroy
      redirect_to people_path, :flash => { :notice => "Person successfully deleted" }
    else
      redirect_to people_path, :flash => { :notice => "Successfully deleted" }
    end
  end

  private
  def person_params
    params.require(:person).permit(:name, :phone, :address, :email, :twitter, :linkedin)
  end
end
