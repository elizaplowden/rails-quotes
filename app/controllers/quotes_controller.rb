class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(strong_params)
    @quote.save

    redirect_to quote_path(@quote)
  end

  private

  def strong_params
    params.require(:quote).permit(:quote, :author)
  end
end
