class Contact
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :phone, type: String
  field :address, type: String
end
