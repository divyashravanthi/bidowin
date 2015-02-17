class Secret < ActiveRecord::Base
	has_many :comments
	extend FriendlyId
	include SimpleHashtag::Hashtaggable
  	hashtaggable_attribute :description
	friendly_id :title, use: :slugged
end
