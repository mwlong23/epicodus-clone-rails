class Lesson < ActiveRecord::Base
  belongs_to :course, optional: true
  has_many :lessons

end
