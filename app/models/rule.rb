class Rule < ActiveRecord::Base
  mount_uploader :rulespdf, PdfUploader
end