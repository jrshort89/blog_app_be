# frozen_string_literal: true

module Types
  module Input
    class BlogInputType < Types::BaseInputObject
      argument :title, String, required: true
      argument :body, String, required: true
    end
  end
end
