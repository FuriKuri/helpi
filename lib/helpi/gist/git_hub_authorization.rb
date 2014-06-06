class GitHubAuthorization
  attr_reader :user, :password

  def initialize(user, password)
    @user = user
    @password = password
  end

  def access_token
    'token'
  end
end