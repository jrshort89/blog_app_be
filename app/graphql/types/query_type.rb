# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_blogs, resolver: Queries::AllBlogs
    field :translation_history, resolver: Queries::TranslationHistory
    field :all_groups, [Types::GroupType]
    field :group_translations, [Types::SpanishTranslationType], null: true do
      argument :group_id, Integer, required: true
    end

    def all_groups
      Group.all
    end

    def group_translations(**args)
      Group.find(args[:group_id]).spanish_translations
    end
  end
end
