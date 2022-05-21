module Mutations
  class DestroyCoin < BaseMutation
    field :id, ID, null: true

    argument :id, ID, required: true

    def resolve(id:)
      coin = Coin.find(id)
      coin.destroy
      {
        id: id,
      }
    end
  end
end
