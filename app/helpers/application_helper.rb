module ApplicationHelper

  def users_profile(user)
  
    user_path = user.username.itself[0,1].to_s.upcase + user.username.match(/(?<=\s)./).to_s.upcase


  end


  
  
  def gravatar_for(user,options = { size: 80 })
    # byebug
    default_url = "https://i.pinimg.com/originals/89/ed/c2/89edc2890c3d14a4ed3bbaab9be06a28.gif"
    user_path = user.username.itself[0,1].to_s.upcase + user.username.match(/(?<=\s)./).to_s.upcase

    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    gravatar_url= "http://gravatar.com/avatar/#{gravatar_id}.png?s=180&d=#{CGI.escape(default_url)}"
    image_tag(gravatar_url, alt:user_path, class: "bg1 rounded-circle shadow mx-auto d-block")
    
    
  
  end
  
end
