class Reply < ApplicationRecord
  belongs_to :user
  belongs_to :inquiry
end
