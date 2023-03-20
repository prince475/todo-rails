class Todo < ApplicationRecord 

  enum :status, %i[CREATED IN_PROGRESS COMPLETE CANCELLED]
  enum :priority, %i[LOW MEDIUM HIGH]

end
