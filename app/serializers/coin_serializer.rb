class CoinSerializer < ActiveModel::Serializer
  attributes :id, :description, :price
end
