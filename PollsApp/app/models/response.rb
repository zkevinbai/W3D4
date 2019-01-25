# == Schema Information
#
# Table name: responses
#
#  id         :bigint(8)        not null, primary key
#  answer_id  :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Response < ApplicationRecord

    #validates_uniqueness_of :user_id, :scope => [:answer_id]

    # validate not_dup_respose

    belongs_to :respondent,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :User

    belongs_to :answer_choice,
        primary_key: :id,
        foreign_key: :answer_id,
        class_name: :AnswerChoice

    has_one :question,
        through: :answer_choice,
        source: :question

    # def not_dup_respose < StandardError
    #     adsadas[:column] << "THis is an error"
    # end

    def sibling_responses
        self.question.responses.where("responses.id != ?", self.id)
    end
end
