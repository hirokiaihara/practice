require './customer'
require './movie'
require './ticket'
require './ticket_vending_machine'
require 'date'

customer = Customer.new('takashi', 5000)

ticket_vending_machine = TicketVendingMachine.new

titanic = Movie.new(
  'titanic',
  2000,
  Date.new(2017, 2, 20),
  Date.new(2017, 4, 20)
)

tom_and_jerry = Movie.new(
  'tom_and_jerry',
  1500,
  Date.new(2017, 3, 18),
  Date.new(2017, 5, 10)
)

oceans_eleven = Movie.new(
  "Ocean's Elaven",
  1800,
  Date.new(2017, 4, 18),
  Date.new(2017, 6, 10)
)

ticket_vending_machine.movies = [titanic, tom_and_jerry, oceans_eleven]

customer.buy(ticket_vending_machine)