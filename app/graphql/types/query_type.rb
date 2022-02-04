module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field(:trigram, Types::TrigramType, null: false) do
      description "Get a trigram"
      argument :id, ID, 'ID of the trigram', required: false
      argument :element, String, 'Element(s) of trigram', required: false
    end

    def trigram(id:)
      Trigram.find(id)
    end
  end
end
