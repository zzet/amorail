require 'amorail/entities/concerns/elementable'

module Amorail
  # AmoCRM note entity
  class Note < Amorail::Entity
    include ::Amorail::Entities::Concerns::Elementable

    amo_names 'notes'

    amo_field :note_type, :text

    validates :note_type, :text,
              presence: true

    validates :element_type, inclusion: ELEMENT_TYPES.values
  end
end
