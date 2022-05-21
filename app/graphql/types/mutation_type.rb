module Types
  class MutationType < Types::BaseObject
    field :update_coin, mutation: Mutations::UpdateCoin
    field :destroy_coin, mutation: Mutations::DestroyCoin
    field :create_coin, mutation: Mutations::CreateCoin
  end
end
