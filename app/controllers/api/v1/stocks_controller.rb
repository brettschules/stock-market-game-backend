class Api::V1::StocksController < ApplicationController
  def index
    render json: Stock.all
  end

  def show
    render json: Stock.find(params[:id])
  end

  def create
    stock = Stock.new(stock_params)
    if stock.save
      render json: {message: "Created Blog!", status: 200}
    else
      render json: {message: blog.errors.full_message, status: 500}
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

def stock_params(*args)
  params.require(:stock).permit(args)
end
