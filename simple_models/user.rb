class User
  attr_accessor :activation_code,
                :activation_expires_at,
                :activated_at

  # The following implementation still has all of the problems we discussed in Chapter 2
  # with initialized objects having unnecessary abilities:
  #
  include UserPersistence
end