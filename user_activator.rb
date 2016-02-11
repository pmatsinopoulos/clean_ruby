class UserActivator
  def initialize(user)
    @user = user
  end

  # This is a problematic solution too. This is because the UserActivator needs to
  # know the interface of the User model
  #
  def activate
    @user.activation_code = nil
    @user.activation_expires_at = nil
    @user.activated_at = Time.zone.now
    @user.save
  end
end