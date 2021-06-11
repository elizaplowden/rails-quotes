class QuotesController < ApplicationController
  before_action :find_quote, only: [:show, :destroy]

  def index
    @quotes = Quote.all
  end

  def show
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(strong_params)
    @quote.save

    redirect_to quote_path(@quote)
  end

  def destroy
    @quote.destroy

    redirect_to quotes_path
  end

  private

  def strong_params
    params.require(:quote).permit(:quote, :author)
  end

  def find_quote
    @quote = Quote.find(params[:id])
  end
end
