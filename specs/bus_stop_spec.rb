require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../bus_stop')
require_relative('../person')

class BusStopTest < Minitest::Test
  def setup
    @person1 = Person.new("Noel", 25)
    @person2 = Person.new("Fraser", 12)

    @bus_stop = BusStop.new("Princes St.")
  end

  def test_number_of_passengers_in_queue
    assert_equal(0, @bus_stop.number_of_passengers)
  end

  def test_add_to_queue
    @bus_stop.add_to_queue(@passenger1)
    assert_equal(1, @bus_stop.number_of_passengers)
  end
end
