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
    puts "User Profiles"
    puts @user
    puts @user.id
    @user || errors.add(:token, 'Invalid token') && nil
  end

  def decoded_auth_token
    @decoded_auth_token ||= JsonWebToken.decode(http_auth_header)
  end

  def http_auth_header
    puts "headers"
    puts headers
    puts "headers.inspect"
    puts headers.inspect
    puts "headers.Authorization"
    puts headers['Authorization']
    if headers['Authorization'].present?
      puts "last auth"
      puts headers['Authorization'].split(' ').last
      return headers['Authorization'].split(' ').last
    else
      errors.add(:token, 'Missing token')
    end
    nil
  end
end
