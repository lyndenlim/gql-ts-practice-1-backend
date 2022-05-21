module Mutations
  class UpdateCoin < BaseMutation
    argument :id, Integer, required: true
    argument :description, String, required: true
    argument :price, Integer, required: false

    field :coin, Types::CoinType, null: false
    field :errors, [String], null: false

    def resolve(id:, description:, price: nil)
      coin = Coin.find(id)
      if (coin.update(description: description, price: price))
        {
          coin: coin,
          errors: [],
        }
      else
        {
          coin: nil,
          errors: coin.errors.full_messages,
        }
      end
    end
  end
end
