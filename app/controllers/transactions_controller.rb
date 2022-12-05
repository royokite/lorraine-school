class TransactionsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index
        transactions = Transaction.all
        render json: transactions
    end
end
