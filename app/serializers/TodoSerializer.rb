class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :created_at, :updated_at

  def id_squared
    index = self.object.id.to_i
    index * index
  end
  
end

