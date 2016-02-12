class Account
  def initialize(cents)
    @cents = cents
  end

  def add_money(cents)
    @cents += cents
  end

  def transfer_to(account, amount)
    @cents -= amount
    account.add_money(amount)
  end
end
