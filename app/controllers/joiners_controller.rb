class JoinersController < ApplicationController
  def index
    joiners = Joiner.all
    render json: joiners
  end

  def show 
    find_joiner
    render json: joiner
  end

  private
  def find_joiner
    joiner = Joiner.find(params[:id])
  end

  def joiner_params
    params.require(:joiner).permit(:content, :article)
  end
end
