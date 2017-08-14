class StockSerializer < ActiveModel::Serializer
  attributes :id, :name, :symbol, :price_purchased, :units, :status, :order, :user_id

  belongs_to :user
end
