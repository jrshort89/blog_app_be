# frozen_string_literal: true

module Mutations
  class GroupCreate < BaseMutation
    description 'Creates a new group'

    field :group, Types::GroupType, null: false

    argument :group_input, Types::Input::GroupInputType, required: true

    def resolve(group_input:)
      group = ::Group.new(**group_input)
      raise GraphQL::ExecutionError.new 'Error creating group', extensions: group.errors.to_hash unless group.save

      { group: }
    end
  end
end
