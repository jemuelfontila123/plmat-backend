class JsonWebToken
  SECRET_KEY = Rails.application.secrets.secret_key_base. to_s

  def self.encode(payload)
    JWT.encode payload, SECRET_KEY, 'H256'
  end

  def self.decode(token)
    decoded_token = JWT.decode(token, SECRET_KEY, true, { algorithm: 'H256'})[0]
    HashWithIndifferentAccess.new decoded_token
  end
end
