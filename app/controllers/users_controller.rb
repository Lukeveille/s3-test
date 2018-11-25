class UsersController < ApplicationController
  before_action :load_user, except: [:index, :new, :create]

  def index
    @users = User.all
  end

  private

  def load_user
    @user = User.find(params[:id])
  end
end
