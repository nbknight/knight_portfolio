class PortfoliosController < ApplicationController

  def index
    #list out all of the portfolio items
    @portfolio_items = Portfolio.all
  end

  def new
    #create a new method for portfolios
    @portfolio_item = Portfolio.new
  end

def create
    @portfolio = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio is live!' }
      else
        format.html { render :new }
      end
    end
  end

  

end
