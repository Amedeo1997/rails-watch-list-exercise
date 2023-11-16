class ListsController < ApplicationController
  before_action :find_list, only: [:show]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
  end

  private

  def find_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :description) # Update with your List model attributes
  end
end
