class DragonsController < ApplicationController
  before_action :set_dragon, only: [:show, :edit, :update, :destroy]
  def index
    @dragons = Dragon.all
  end

  def show
  end

  def new
    @dragon = Dragon.new
    @users = User.all
  end

  def create
    @dragon = Dragon.create(dragon_params)

    redirect_to @dragon
  end

  def edit
    @users = User.all
  end


  def update
    @dragon.update(dragon_params)

    redirect_to @dragon
  end

  def destroy
    @dragon.destroy

    redirect_to dragons_path
  end

  private
  def set_dragon
    @dragon = Dragon.find(params[:id])
  end

  def dragon_params
    params.require(:dragon).permit(:name, :breed, :attack_power, :user_id)
  end

end
