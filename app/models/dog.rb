class Dog < ApplicationRecord
	has_many :strolls
	has_many :dogsitters, through: :strolls
	has_many :join_table_dog_strolls
	belongs_to :city
end
