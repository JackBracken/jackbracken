class Photograph < ActiveRecord::Base
	extend FriendlyId

	friendly_id :title, use: :slugged

	validates :title, 			  presence: true, uniqueness: { case_sensitive: false }
	validates :date_taken, 	  presence: true
	validates :photo, 			  presence: true
  validates :camera_model,  presence: true
  validates :aperture,      presence: true
  validates :focal_length,  presence: true
  validates :shutter_speed, presence: true
  validates :iso,           presence: true
  validates :map_location,  presence: true

	has_attached_file :photo, :styles =>  { :share => "1024x512#",
                                          :medium => "1920x" }
	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

end
