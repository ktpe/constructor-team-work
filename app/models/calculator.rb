class Calculator < ApplicationRecord
  has_many :fields, dependent: :destroy

  accepts_nested_attributes_for :fields, reject_if: :all_blank, allow_destroy: true
end
