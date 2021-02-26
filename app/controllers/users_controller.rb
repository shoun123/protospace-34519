class UsersController < ApplicationController
  def show
    # @prototype = Prototype.find(params[:id])

    @user = User.find(params[:id])

    # @name = user.name
  end
end
