# frozen_string_literal: true

module Types
  class CoinType < Types::BaseObject
    field :id, ID, null: false
    field :description, String
    field :price, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
