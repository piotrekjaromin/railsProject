class Ticket < ActiveRecord::Base
  belongs_to :event
  belongs_to :ticket
  validate :max_five_ticets

  def max_five_ticets
    @ticketCounter = Ticket.where(user_id: user_id).where(event_id: event_id).inject(0) {|counter, item| counter += (item.numberOfTickets)}

    p "---------------------------"
    p @ticketCouter
    if  @ticketCounter + numberOfTickets > 5
      errors.add('Number of tickets', 'cannot be greather than 5. Actual: ' + (@ticketCounter + numberOfTickets ).to_s)
    end
  end
end
