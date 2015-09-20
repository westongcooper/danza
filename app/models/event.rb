  require 'carrierwave/orm/activerecord'
class Event < ActiveRecord::Base
  has_many :pictures, dependent: :destroy
  mount_uploader :avatar, AvatarUploader
  mount_uploader :pdf, PdfUploader
end
