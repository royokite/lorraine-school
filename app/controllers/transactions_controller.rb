class TransactionsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    
    def index
        transaction = Transaction.all
        render json: transaction
    end

    def show
        transaction = Transaction.find_by(params[:id])
        render json: transaction
    end
    
    def create
        transaction = Transaction.create!(transaction_params)
        render json: transaction, status: :created
    end

    def destroy
        transaction = Transaction.find(params[:id])
        transaction.destroy
        head :no_content
    end

    private

    def transaction_params
        params.permit(:transaction_id, :transaction_name, :student_id, :trans_date)
    end

    def find_ transaction
        Transaction.find(params[:id])
    end

    def render_not_found_response
        render json: { error: "Transaction not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end
