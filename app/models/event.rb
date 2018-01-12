class Event < ActiveRecord::Base

validates :artist, presence: true
validates :price_low, presence: true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }
validates :price_low, presence: true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }
validates :event_date, presence: true, format: { with: /\d{4}-\d{2}-\d{2}/ }
end