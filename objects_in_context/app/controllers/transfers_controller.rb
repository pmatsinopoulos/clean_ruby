class TransfersController < ApplicationController
  # We would prefer something more simple
  #
  def create
    transfer = MoneyTransfer.new(params[:account_id], params[:destination_id])
    transfer.execute(params[:amount])
    redirect_to account_transfers_url account
  end
end
