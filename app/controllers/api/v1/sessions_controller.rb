class Api::V1::SessionsController < ApplicationController
    def index
        @sessions = Session.all
        render json: @sessions
    end

    def show
        @session = Session.find(params[:id])
        render json: @session
    end

    def create
        candidate_id = params[:session][:candidate_id]
        @session = Session.new(session_params)
        @session.candidate_id = candidate_id
        if @session.save
            render json: @session
        else
            render json: { error_message: 'Unable to create session.', errors: @session.errors.messages }, status: 400
        end
    end

    private

    def session_params
        params.require(:session).permit(:answer, :candidate_id)
    end
end
