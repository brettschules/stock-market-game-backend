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
      render json: {message: "New Order!", status: 200}
    else
      render json: {message: stock.errors.full_message, status: 500}
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
private
  def stock_params
    params.require(:stock).permit(:name, :symbol, :price_purchased, :units, :status, :order, :user_id)
  end

end
