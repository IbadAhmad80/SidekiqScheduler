class Book < ApplicationRecord
  belongs_to :author

  after_create do
    TaskSchedulerJob.set(wait: 1.minute).perform_later
  end
end
