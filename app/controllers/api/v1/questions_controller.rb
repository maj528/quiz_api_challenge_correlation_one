class Api::V1::QuestionsController < ApplicationController
    def index
        submission = Submission.find(params[:submission_id])
        @questions = submission.questions
        render json: @questions
    end

    def show
        submission = Submission.find(params[:submission_id])
        @question = submission.questions.find(params[:id])
        render json: @question
    end

    def create
        submission_id = params[:submission_id]
        @question = Question.new(question_params)
        @question.submission = Submission.find(submission_id)
        created_at = @question.submission.created_at
        expired = created_at > Time.now + 60*60
        if @question.save
            if expired
                render json: {question: @question, error_message: "submitted after expiry"}
            else
                render json: @question
            end
        else
            render json: { error_message: 'Unable to create question.', errors: @question.errors.messages }, status: 400
        end
    end

    private

    def question_params
        params.require(:question).permit(:question_type, :correct_answer, :question_description)
    end
    
end
