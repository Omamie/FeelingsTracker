class FeelingsController < ApplicationController

  def index
    @feelings = Feeling.all
  end
  def new
    @feeling = Feeling.new
  end

  def create
    @feeling = Feeling.new
    if @feeling.save
      redirect_to feeling_path(@feeling)
    else
      render :new
    end
  end

  def show
    @feeling = Feeling.find(params[:id])
  end

  # private
  # def feeling_params
  #   params.require(:feeling).permit(:number)
  # end
end
