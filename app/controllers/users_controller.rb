class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    redirect_to @user
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to @user
  end

  def destroy

    unless @user.dragons == []
      @user.dragons.each do |dragon|
        dragon.user = nil
        dragon.save
      end
    end

    @user.destroy

    redirect_to users_path
  end

  private #-----------------------------
  
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :attack_power, :defense_power)
  end
end
