module Types
  class MutationType < Types::BaseObject
    field :destroy_coin, mutation: Mutations::DestroyCoin
    field :create_coin, mutation: Mutations::CreateCoin
  end
end
