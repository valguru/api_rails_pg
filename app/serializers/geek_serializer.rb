
include ActionController::Serialization

class GeekSerializer < ActiveModel::Serializer
    attributes :name, :stack, :resume
end
