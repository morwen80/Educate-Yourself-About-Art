class ListsController < ApplicationController
  before_action :user

  http_basic_authenticate_with name: "user", password: "secret", except: [:index, :show]


  def index
     @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user_id = params[:user_id]
    if @list.save
      redirect_to user_lists_path
    else
      render 'new'
    end
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(list_params)
    if @list.update(list_params)
      redirect_to @list
    else
      render 'edit'
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to user_lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :description)
  end

  def user
    @user = User.find(params[:user_id])
  end
end
