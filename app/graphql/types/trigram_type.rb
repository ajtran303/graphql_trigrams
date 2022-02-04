module Types
  class TrigramType < Types::BaseObject
    description 'The base point for querying trigrams'

    field(:id, ID, null: false) do
      description 'The id trigram'
    end

    field(:trigram, String, null: false) do
      description 'The trigram'
    end
    
    field(:binary, String, null: false) do
      description 'The binary'
    end
    
    field(:element, String, null: false) do
      description 'The element'
    end
  end
end