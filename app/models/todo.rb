class Todo < ApplicationRecord
  # TODO 1 tester la présence du todo (nom vide)
  validates :title, presence: true
  # TODO 2 supprime les espaces avant et aprés le titre (trim)
  normalizes :title, with: ->(title) {title.strip}
end
