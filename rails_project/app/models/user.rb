class User < ActiveRecord::Base
  after_create :send_welcome,
               :notify_admin_of_new_member
  attr_accessor :dont_send_to_admin?
  private

  def send_welcome
    Notifier.send_welcome id
  end

  def notify_admin_of_new_member
    Notifier.notify_admin_of_new_member(id) unless dont_send_to_admin?
  end
end