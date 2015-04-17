class Photograph < ActiveRecord::Base
	extend FriendlyId

	friendly_id :title, use: :slugged

	paginates_per 15

	validates :title, 		presence: true, uniqueness: { case_sensitive: false }
	validates :date_taken, 	presence: true
	validates :photo, 		presence: true

	has_attached_file :photo, :styles => { :share => "1024x512#" }
	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

	def to_param
		slug
	end

	def create_slug
		self.slug = self.title.parameterize
	end
end
