module ApplicationHelper

  def gravatar_for(user, options={size: 80})
    email_address = user.email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    img_size = options[:size]
    gravatar_url = "https://www.gravatar.com/avatar/#{hash}?s=#{img_size}"
    image_tag(gravatar_url, alt: user.username, class: "rounded shadow mx-auto d-block")
  end

end
