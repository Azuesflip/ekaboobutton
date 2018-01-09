class Performance < ApplicationRecord
	has_many :photos, dependent: :destroy
	validates_presence_of :title, :body, :date, :location
end
