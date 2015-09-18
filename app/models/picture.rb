require 'carrierwave/orm/activerecord'
class Picture < ActiveRecord::Base
  belongs_to :event
  mount_uploader :pic, PictureUploader
end
