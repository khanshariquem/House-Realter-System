class Reply < ApplicationRecord
  belongs_to :user
  belongs_to :inquiry
  validates_presence_of :response
end
