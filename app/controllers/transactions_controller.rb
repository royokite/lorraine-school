class TransactionsController < ApplicationController

    def index
        render json: Transaction.all, status: :ok
    end

    def show
        transaction = find_transaction
        render json: transaction, status: :ok
    end
    
    def create
        transaction = Transaction.create!(transaction_params)
        render json: transaction, status: :created
    end

    private

    def find_transaction
        Transaction.find(params[:id])
    end

    def transaction_params
        params.permit(:transaction_name, :student_id, :transaction_date)
    end

end
