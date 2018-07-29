require 'amorail/entities/concerns/elementable'

module Amorail
  # AmoCRM task entity
  class Task < Amorail::Entity
    include ::Amorail::Entities::Concerns::Elementable

    amo_names 'tasks'

    amo_field :task_type, :text, complete_till: :timestamp

    validates :task_type, :text, :complete_till,
              presence: true

    validates :element_type, inclusion:
              ELEMENT_TYPES.reject { |type, _| type == :task }.values
  end
end
