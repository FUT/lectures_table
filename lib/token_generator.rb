class TokenGenerator
  TOKEN_LENGTH = 6

  def self.generate
    SecureRandom.urlsafe_base64 TOKEN_LENGTH
  end
end
