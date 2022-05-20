class Mutations::CreateCoin < Mutations::BaseMutation
  argument :description, String, required: true
  argument :price, Integer, required: true

  field :coin, Types::CoinType, null: false
  field :errors, [String], null: false

  def resolve(description:, price:)
    coin = Coin.new(description: description, price: price)

    if (coin.save)
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
