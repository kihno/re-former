class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(username: '...', email: '...', password: '...')

    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end
end
