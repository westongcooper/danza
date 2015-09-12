require 'carrierwave/orm/activerecord'
class Faculty < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
end