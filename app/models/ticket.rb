class Ticket < ActiveRecord::Base
  belongs_to :event
  belongs_to :ticket
  validate :max_five_ticets
  validate :number_of_tickets_more_than_0
  validate :price_between
  validate :enough_money

  def max_five_ticets
    @ticketCounter = Ticket.where(user_id: user_id).where(event_id: event_id).inject(0) {|counter, item| counter += (item.numberOfTickets)}

    p "---------------------------"
    p @ticketCouter
    if @ticketCounter + numberOfTickets > 5
      errors.add('Number of tickets', 'cannot be greather than 5. Actual: ' + (@ticketCounter + numberOfTickets).to_s)
    end
  end

  def number_of_tickets_more_than_0
    if numberOfTickets < 1
      errors.add('Number of tickets', 'cannot be less than 1. Actual: ' + (numberOfTickets).to_s)
    end
  end

  def price_between
    @event = Event.where(id: event_id)[0]
    if @event.price_low > price || @event.price_high <price
      errors.add('Price', 'is not between ' + @event.price_low.to_s + ' and ' + @event.price_high.to_s + '. Actual: ' + (price).to_s)
    end
  end

  def enough_money
    if User.where(id: user_id)[0].money < price
      errors.add('Price', price.to_s + ' is not enought in account. Actual:' + User.where(id: user_id)[0].money.to_s)
    end
  end
end
