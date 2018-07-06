# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint(8)        not null, primary key
#  answer_text :string           not null
#  question_id :integer          not null
#


class AnswerChoice < ApplicationRecord
  validates :answer_text, presence: true
  
  belongs_to :question,
  primary_key: :id,
  foreign_key: :question_id,
  class_name: :Question
  
  has_many :responses,
  primary_key: :id,
  foreign_key: :answer_choice_id,
  class_name: :Response
  
end
