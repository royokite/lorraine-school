class TransactionsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    def index
        transaction = Transaction.all
        render json: transaction
    end

    def show
        transaction = Transaction.find_by(params[:id])
        render json: transaction
    end
end
