# frozen_string_literal: true

module Mutations
  class CreateBlog < Mutations::BaseMutation
    null true
    argument :title, String
    argument :body, String

    field :blog, Types::Blog

    def resolve(title: nil, body: nil)
      Blog.create!
    end
  end
end
