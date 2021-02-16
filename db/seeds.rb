15.times do 
    Candidate.create({
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email
    })
    end

# create faker for questions, sessions, submission?, answer option?

15.times do 
    Submission.create({
        candidate_id: Faker::Number.between(from: 1, to: 20),
        answer: Faker::Lorem.words(number: 1)
    })
    end

puts "doing questions"
15.times do 
    Question.create({
        #fix question type 0, not getting submissions other than id 4
        question_type: :radio,
        correct_answer: Faker::Lorem.words(number: 1),
        question_description: Faker::Lorem.question(word_count: 5),
        submission_id: Faker::Number.between(from: 1, to: 10)
    })
    end

    puts "doing subs"



    #issues creating new session?

    puts "doing sess"
15.times do
    Session.create({
        candidate_id: Faker::Number.between(from: 1, to: 20)

    })
    end

    puts "doing answer ops"

15.times do
    AnswerOption.create({
        answer_description: Faker::Lorem.words(number: 1),
        question_id: Faker::Number.between(from: 1, to: 10)
    })
    end
