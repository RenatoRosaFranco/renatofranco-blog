# frozen_string_literal: true

# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :text
#  slug       :string
#  tags       :string
#  thumbnail  :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: [:slugged]

  # Properties
  self.table_name  = 'posts'
  self.primary_key = 'id'

  # Delegates
  delegate :avatar, to: :user, prefix: :user
  delegate :name,   to: :user, prefix: :user

  # Uploader
  has_one_attached :thumbnail

  # Relationships
  belongs_to :user
end
