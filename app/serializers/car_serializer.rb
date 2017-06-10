class CarSerializer < ActiveModel::Serializer
  attributes :id, :model, :color, :lcp, :repair
  has_one :user
end
