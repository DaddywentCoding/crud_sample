class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  # 新規作成画面に対応するアクション
  def new
    @user = User.new
  end

  def create
    # Strong Parameter の記述
    User.create(user_params)
    redirect_to action: :index
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to action: :index
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to action: :index
  end


  private
  def user_params
    params.require(:user).permit(:name, :age)
  end


end