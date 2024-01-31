class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :name, :surname, :contact_number
  attribute :created_date do |user|
    user.created_at && user.created_at.strftime('%m/%d/%Y')
  end
end
