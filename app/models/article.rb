class Article < ActiveRecord::Base
  has_attached_file :document, {
    path: ":rails_root/public/system/:attachment/:id/:style/:filename",
    default_url: "/articles/:id/:filename"
  }
  validates_attachment :document, content_type: { content_type: "application/pdf" }
end
