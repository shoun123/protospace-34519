class PrototypesController < ApplicationController

  def index
    @prototypes =Prototype.all
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype =Prototype.create(prototype_params)
    @prototype.user_id = current_user.id
    if @prototype.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

    def prototype_params
      params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
    end

end



