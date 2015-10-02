  require 'carrierwave/orm/activerecord'
class Event < ActiveRecord::Base
  has_many :pictures, dependent: :destroy
  mount_uploader :avatar, EventPicUploader
  mount_uploader :pdf, PdfUploader
  mount_uploader :banner, BannerUploader
end
