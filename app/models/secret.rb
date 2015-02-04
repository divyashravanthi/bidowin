class Secret < ActiveRecord::Base
	has_many :comments
	extend FriendlyId
	friendly_id :title, use: :slugged
end
