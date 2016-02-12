class User < ActiveRecord::Base
  after_create :send_welcome,
               :notify_admin_of_new_member
  attr_accessor :dont_send_to_admin?

  def self.create_without_admin_notification!(params)
    self.skip_callback :create, :after, :notify_admin_of_new_member
    self.create!(params)
    # Turn the callback back on
    self.set_callback :create, :after, :notify_admin_of_new_member
  end

  private

  def send_welcome
    Notifier.send_welcome id
  end

  def notify_admin_of_new_member
    Notifier.notify_admin_of_new_member(id)
  end
end