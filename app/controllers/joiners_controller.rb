class JoinersController < ApplicationController
  before_action :find_joiner, only: [:show, :destroy]

  def index
    joiners = Joiner.all
    render json: joiners
  end

  def show 
    render json: @joiner
  end

  def destroy
    @joiner.destroy
    render json: @joiner.article
  end

  private
  def find_joiner
    @joiner = Joiner.find(params[:id])
  end

  def joiner_params
    params.require(:joiner).permit(:content, :article)
  end
end
