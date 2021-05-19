class AuthorizeApiRequest
  prepend SimpleCommand

  def initialize(headers = {})
    @headers = headers
  end

  def call
    user
  end

  private

  attr_reader :headers

  def user
    @user ||= User.find(decoded_auth_token[:user_id]) if decoded_auth_token
    puts "boolean - decoded_auth_token"
    puts decoded_auth_token
    puts "User"
    puts @user
    @user || errors.add(:token, 'Invalid token') && nil
    puts "User - error?"
    puts @user
  end

  def decoded_auth_token
    puts 'JSONWebtoken working?'
    puts JsonWebToken.decode(http_auth_header)
    puts 'did anything come '
    @decoded_auth_token ||= JsonWebToken.decode(http_auth_header)
    puts "decoded_auth_token"
    puts @decoded_auth_token
  end

  def http_auth_header
    if headers['Authorization'].present?
      return headers['Authorization'].split(' ').last
    else
      errors.add(:token, 'Missing token')
    end
    nil
  end
end
