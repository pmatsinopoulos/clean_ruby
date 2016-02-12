class User < ActiveRecord::Base
  after_create :send_welcome,
               :notify_admin_of_new_member

  private

  def send_welcome
    Notifier.send_welcome id
  end

  def notify_admin_of_new_member
    Notifier.notify_admin_of_new_member id
  end
end