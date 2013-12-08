class College < ActiveRecord::Base
  validates :campus, presence: true
end
