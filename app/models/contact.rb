class Contact
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :phone, type: String
  field :address, type: String
 
  validates :name, presence: true,
                    length: { minimum: 3 }

  validates :phone, presence: true,
                    length: { minimum: 10 }

end
