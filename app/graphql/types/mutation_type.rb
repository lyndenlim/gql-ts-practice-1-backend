module Types
  class MutationType < Types::BaseObject
    field :create_coin, mutation: Mutations::CreateCoin
  end
end
