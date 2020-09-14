class Brand < ApplicationRecord
    has_many :products, dependent: :destroy #One brand can have multiple products and models.
    validates :title, presence: true,
                      length: { minimum: 1 }  #When adding a product we have to enter at least 1 character.
end
