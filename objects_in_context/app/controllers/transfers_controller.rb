class TransfersController < ApplicationController
  # The Tansfers Controller still remains quite complicated.
  #
  def create
    source = Account.find params[:account_id]
    destination = Account.find params[:destination_id]
    mt = MoneyTransfer.new(source, destination)
    mt.execute(params[:amount])
    redirect_to account_transfers_url account
  end
end
