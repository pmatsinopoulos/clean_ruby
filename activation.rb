module Activation
  def activate
    self.activation_code = nil
    self.activation_expires_at = nil
    self.activated_at = Time.now
    save
  end
end