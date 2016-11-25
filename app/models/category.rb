class Category < ApplicationRecord

has_many :article
validates_presence_of :name
end
