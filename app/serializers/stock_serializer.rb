class StockSerializer < ActiveModel::Serializer
  attributes :id, :name, :symbol, :price_purchased, :units, :status, :order, :user_id, :created_at

  belongs_to :user
end
