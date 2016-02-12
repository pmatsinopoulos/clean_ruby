class TransfersController < ApplicationController
  # We have just created a TransfersController that assumes that account responds_to #transfer_to. But we have already said that this feature is not something
  # that we want to permanently apply to the Account. We do not want to combine doing with being in the definition of the Account
  #
  def create
    account = Account.find params[:account_id]
    account.transfer_to params[:destination_id], params[:amount]
    redirect_to account_transfers_url account
  end
end
