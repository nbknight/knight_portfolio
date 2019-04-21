class PortfoliosController < ApplicationController

  def index
    #list out all of the portfolio items
    @portfolio_items = Portfolio.all
  end

end
