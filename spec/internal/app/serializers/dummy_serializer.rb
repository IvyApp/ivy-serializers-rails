class DummySerializer < Ivy::Serializers::Serializer
  map Comment do
    attribute :id
    attribute :body

    belongs_to :post, :embed_in_root => true
  end

  map Post do
    attribute :id
    attribute :title

    has_many :comments, :embed_in_root => true
  end
end
