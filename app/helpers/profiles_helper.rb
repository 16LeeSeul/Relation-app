module ProfilesHelper
    def gravatar_url(email, size)
        gravatar = Digest::MD5::hexdigest(email).downcase # digest ; 암호화(MD5라는 걸로 암호화시킴)
        url = "http://gravatar.com/avatar/#{gravatar}.png?s=#{size}"
    end
end
