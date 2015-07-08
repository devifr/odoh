class Gallery < ActiveRecord::Base
  has_attached_file :images, :styles => {
                                          :medium => "300x300>",
                                          :thumb => "100x100>"
                                        },
                              :default_url => "/images/no-image.png"
  validates_attachment_content_type :images, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
