class UsersController < ApplicationController
  before_action :load_user, except: [:index, :new, :create]
  before_action :write_user, only: [:create, :update]

  def index
    @users = User.all
  end

  def update
    if @user.save
      redirect_to users_path
    else
      render :edit
    end
  end

  private

  def load_user
    @user = User.find(params[:id])
  end

  def write_user
    @user.avatar = params[:user][:avatar]
  end
end
