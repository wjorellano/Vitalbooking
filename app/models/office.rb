class Office < ApplicationRecord
  acts_as_paranoid
  belongs_to :clinic
  broadcasts_to ->(clinic) { :office_list }, target: 'office_list'
  has_many :schedules, dependent: :destroy

end
