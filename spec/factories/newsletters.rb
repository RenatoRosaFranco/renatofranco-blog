# == Schema Information
#
# Table name: newsletters
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :newsletter do
    email { "MyString" }
  end
end
