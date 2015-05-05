class DummySerializer < Ivy::Serializers::Serializer
  map Post do
    attribute :id
    attribute :title
  end
end
