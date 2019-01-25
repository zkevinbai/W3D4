# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do

    User.delete_all
    
    jason = User.create!(username: "Json")
    kason = User.create!(username: "Kson")
    lason = User.create!(username: "Lson")
    mason = User.create!(username: "Mson")

    Poll.delete_all

    poll1 = Poll.create!(title: "Best Name", author_id: jason.id)

    Question.delete_all

    q1 = Question.create!(text: "Who has the best name?", poll_id: poll1.id)
    q2 = Question.create!(text: "Who has the worst name?", poll_id: poll1.id)
    q3 = Question.create!(text: "Who has the most average name?", poll_id: poll1.id)
    
    AnswerChoice.delete_all

    a1 = AnswerChoice.create!(text: jason.username, question_id: q1.id)
    a2 = AnswerChoice.create!(text: kason.username, question_id: q1.id)
    a3 = AnswerChoice.create!(text: lason.username, question_id: q1.id)
    a4 = AnswerChoice.create!(text: mason.username, question_id: q1.id)

    a5 = AnswerChoice.create!(text: jason.username, question_id: q2.id)
    a6 = AnswerChoice.create!(text: kason.username, question_id: q2.id)
    a7 = AnswerChoice.create!(text: lason.username, question_id: q2.id)
    a8 = AnswerChoice.create!(text: mason.username, question_id: q2.id)
    
    a9 = AnswerChoice.create!(text: jason.username, question_id: q3.id)
    a10 = AnswerChoice.create!(text: kason.username, question_id: q3.id)
    a11 = AnswerChoice.create!(text: lason.username, question_id: q3.id)
    a12 = AnswerChoice.create!(text: mason.username, question_id: q3.id)

    Response.delete_all

    r1 = Response.create!(answer_id: a1.id, user_id: jason.id)
    r2 = Response.create!(answer_id: a2.id, user_id: kason.id)
    r3 = Response.create!(answer_id: a3.id, user_id: lason.id)
    r4 = Response.create!(answer_id: a4.id, user_id: mason.id)
    

end