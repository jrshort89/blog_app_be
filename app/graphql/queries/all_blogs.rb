# frozen_string_literal: true

module Queries
  class AllBlogs < Queries::BaseQuery
    type [Types::BlogType], null: false

    def resolve
      Blog.all
    end
  end
end
