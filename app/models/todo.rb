class Todo < ApplicationRecord

  enum :status, %i[CREATED IN_PROGRESS COMPLETE CANCELLED]
  enum :priority, %i[LOW MEDIUM HIGH]

  # DATA => title min => 5, max => 25, is not empty, contaon(.)
  # description => min => 40

  validates :title, presence: true, length: {}
  validates :title, length: { maximum: 25 }
  validates :title, length: { minimum: 5 }
  validates :description, length: { minimjum: 40 }
  validates :category, inclusion: { in: %w[Fiction Non-Fiction] }
  validates :content, length: { minimum: 100 }

  validate :check_title

  def check_title
    if !title.include?('')
      errors.add(:title, 'title must not be empty')
    end
  end
end
