class StocksController < ApplicationController

	def index
		@data = YahooFinance.quotes(["GOOG", "MSFT", "FB", "AMZN", "PCLN", "HPQ", "INTC", "QCOM", "MU", "YHOO"], [:name, :symbol, :ask, :bid, :last_trade_date])
	end

	def show
		ticker = params[:ticker]
		@data = YahooFinance.quotes([ticker], [:name, :symbol, :ask, :bid, :last_trade_date])
	end

end
