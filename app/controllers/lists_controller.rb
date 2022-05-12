class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new # needed to instantiate the form_for
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    if @list.save # if it does save, go to the show page to see it's been saved
      redirect_to list_path(@list)
    else # if it doesn't save, show the new form again.
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
