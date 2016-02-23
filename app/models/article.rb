class Article < ActiveRecord::Base
  has_attached_file :document, {
    path: ":rails_root/public/documents/:filename"
  }

  validates_attachment :document, content_type: { content_type: "application/pdf" }
end
