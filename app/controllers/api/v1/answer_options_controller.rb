class Api::V1::AnswerOptionsController < ApplicationController
    def index
        @answer_options = AnswerOption.all
        render json: @answer_options
    end

    def show
        @answer_option = AnswerOption.find(params[:id])
        render json: @answer_option
    end

    def create
        question_id = params[:answer_option][:question_id]
        # byebug
        @answer_option = AnswerOption.new(answer_option_params)
        @answer_option.question = Question.find(question_id)     
        if @answer_option.save
            render json: @answer_option
        else
            render json: { error_message: 'Unable to create answer option.', errors: @answer_option.errors.messages }, status: 400
        end
    end

    private

    def answer_option_params
        params.require(:answer_option).permit(:answer_description, :question_id)
    end
    
end
