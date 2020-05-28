class JoinersController < ApplicationController
  before_action :find_joiner, only: [:show]

  def index
    joiners = Joiner.all
    render json: joiners
  end

  def show 
    render json: @joiner
  end

  private
  def find_joiner
    @joiner = Joiner.find(params[:id])
  end

  def joiner_params
    params.require(:joiner).permit(:content, :article)
  end
end
