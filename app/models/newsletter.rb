# == Schema Information
#
# Table name: newsletters
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Newsletter < ApplicationRecord
  
  # Properties
  self.table_name  = 'newsletters'
  self.primary_key = 'id'

  # Validations
  validates :email, presence: true, uniqueness: true
end
