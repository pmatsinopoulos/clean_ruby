class User
  attr_accessor :activation_code,
                :activation_expires_at,
                :activated_at

  # The following implementation still has all of the problems we discussed in Chapter 2
  # with initialized objects having unnecessary abilities:
  #
  # For example, an object instance will always carry the functionality that comes with the
  # Activation module, even after it has been deactivated.
  #
  include Activation
  include UserPersistence
end