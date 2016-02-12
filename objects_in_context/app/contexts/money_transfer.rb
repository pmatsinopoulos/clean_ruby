class MoneyTransfer
  def initialize(source_id, destination_id)
    @source, @destination = find_account(source_id), find_account(destination_id)
    assign_transferrer @source
  end

  def execute(amount)
    @source.transfer_to(@destination, amount)
  end

  private

  def find_account(account_id)
    Account.find account_id
  end

  def assign_transferrer(account)
    account.extend Transferrer
  end

  module Transferrer
    def transfer_to(destination, amount)
      self.balance -= amount
      destination.balance += amount
    end
  end
end