class Api::V1::CandidatesController < ApplicationController
    def index
        @candidates = Candidate.all
        render json: @candidates
    end

    def show
        @candidate = Candidate.find(params[:id])
        render json: @candidate
    end

 # help
    def create
        # byebug
        @candidate = Candidate.new(candidate_params)
        if @candidate.save
            render json: @candidate
        else
            render json: { error_message: 'Unable to create candidate.', errors: @candidate.errors.messages }, status: 400
        end
    end

    private

    def candidate_params
        params.require(:candidate).permit(:first_name, :last_name, :email)

       #params.permit(:first_name, :last_name, :email)

    end

end
