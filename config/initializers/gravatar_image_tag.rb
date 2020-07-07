ActionView::Base.default_gravatar_size  = 120


GravatarImageTag.configure do |config|
  config.default_image           = nil   
  config.filetype                = nil   
  config.include_size_attributes = true  
  config.rating                  = nil   
  config.size                    = nil   
  config.secure                  = false 
end