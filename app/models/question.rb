class Question < ActiveRecord::Base
  validates_presence_of :statement, :answer1, :answer2, :answer3,
    :correct_answer, :domain
  validates :statement, length: { maximum: 100 }
  validates :domain, length: { maximum: 30 }
  validates :answer3, :answer2, :answer1, length: { maximum: 50 }
  validate :enunt_validation, :ans1_validation, :ans2_validation, :ans3_validation,
    :correct_answer_validation, :domain_validation

  def enunt_validation
    errors.add(:statement, 'First letter must be uppercase.') if (/[A-Z]/.match statement[0]).nil?
    errors.add(:statement, 'Last character must be ?') if statement[-1] != '?'
  end

  def ans1_validation
    errors.add(:answer1, 'It must start with 1.') if answer1[0] != '1'
  end

  def ans2_validation
    errors.add(:answer2, 'It must start with 2.') if answer2[0] != '2'
  end

  def ans3_validation
    errors.add(:answer3, 'It must start with 3.') if answer3[0] != '3'
  end

  def correct_answer_validation
    errors.add(:correct_answer, 'Must be one of {1, 2, 3}.') unless ['1', '2', '3'].include? correct_answer
  end

  def domain_validation
    errors.add(:domain, 'First letter must be uppercase.') if (/[A-Z]/.match domain[0]).nil?
  end
end
