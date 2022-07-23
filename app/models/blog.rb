# == Schema Information
#
# Table name: blogs
#
#  id         :bigint           not null, primary key
#  user_id    :integer
#  title      :string
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Blog < ApplicationRecord
    validates :title, :body, presence: true
end
