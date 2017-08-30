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
  # if stock.update(symbol: params[:symbol], price_purchased: params[:price_purchased], units: params[:units], status: params[:status], order: params[:order], user_id: params[:user_id])

  def update
    stock = Stock.find_by(id: params[:id])
    if stock.update(status: params[:status], price_purchased: params[:price_purchased] )
      render json: {
        stock_id: stock
      }
    else
      render json: stock.errors, status: :unprocessable
    end
  end

  def destroy
  end
private
  def stock_params
    params.require(:stock).permit(:name, :symbol, :price_purchased, :units, :status, :order, :user_id, :created_at)
  end

end
