class Api::V1::SubmissionsController < ApplicationController
    def index
        @submissions = Submission.all
        render json: @submissions
    end

    def show
        @submission = Submission.find(params[:id])
        render json: @submission
    end

    def create
        candidate_id = params[:candidate_id]
        @submission = Submission.new(submission_params)
        @submission.candidate_id = candidate_id
        if @submission.save
            render json: @submission
        else
            render json: { error_message: 'Unable to create submission.', errors: @submission.errors.messages }, status: 400
        end
    end

    private

    def submission_params
        params.require(:submission).permit(:answer, :questions_id)
    end
    
end
