# frozen_string_literal: true

class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :publish_date, presence: true
end
