# == Schema Information
#
# Table name: newsletters
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class NewsletterSerializer < ActiveModel::Serializer
  attributes :id, :name
end
