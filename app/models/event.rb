class Event < ActiveRecord::Base
  has_many :tickets
  validates :artist, presence: true
  #validates :price_low, presence: true, format: {with: /\A\d+(?:\.\d{2})?\z/}, numericality: {greater_than: 0, less_than: 1000000}
  #validates :price_high, presence: true, format: {with: /\A\d+(?:\.\d{2})?\z/}, numericality: {greater_than: 0, less_than: 1000000}
  validates :event_date, presence: true, format: {with: /\d{4}-\d{2}-\d{2}/}
  validate :event_date_not_from_past
  validate :price_max_min


  def event_date_not_from_past
    if event_date < Date.today
      errors.add('Data wydarzenia', 'nie może być z przeszłości')
    end
  end

  def price_max_min
    if price_high < price_low
      errors.add('Price max', 'nie moze być mniejsza od price min')
    end
  end

end