require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../bus_stop')
require_relative('../person')

class BusStopTest < Minitest::Test
  def setup
    @passenger1 = Person.new("Noel", 25)
    @passenger2 = Person.new("Fraser", 12)

    @bus_stop1 = BusStop.new("Princes St.")

    @bus_stop2 = BusStop.new("Leith")
    @bus_stop2.add_to_queue(@passenger1)
    @bus_stop2.add_to_queue(@passenger2)
  end

  def test_get_number_of_passengers_in_queue
    assert_equal(0, @bus_stop1.get_number_in_queue)
  end

  def test_add_to_queue
    @bus_stop1.add_to_queue(@passenger1)
    assert_equal(1, @bus_stop1.get_number_in_queue)
  end

  def test_remove_from_front_of_queue
    @bus_stop2.remove_from_front_of_queue
    assert_equal(1, @bus_stop2.get_number_in_queue)
  end

  def test_get_passenger_at_front_of_queue
    found_passenger = @bus_stop2.get_passenger_at_front_of_queue
    assert_equal(@passenger1, found_passenger)
  end
end
