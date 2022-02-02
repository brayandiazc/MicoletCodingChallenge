# == Schema Information
#
# Table name: preferences
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Preference < ApplicationRecord
  # Validations
  validates :name,              presence: true,
                                uniqueness: true
end
