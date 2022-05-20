module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :coins, [Types::CoinType], null: false

    def coins
      Coin.all
    end

    field :coin, Types::CoinType, null: false do
      argument :id, ID, required: true
    end

    def coin(id:)
      Coin.find(id)
    end
  end
end
