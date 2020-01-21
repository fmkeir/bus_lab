require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class BusTest < Minitest::Test
  def setup
    @bus = Bus.new(69, "Leith docks")

    @passenger1 = Person.new("Noel", 25)
    @passenger2 = Person.new("Fraser", 12)

    @bus_stop = BusStop.new("Princes St.")
  end

  def test_drive
    assert_equal("Brum brum", @bus.drive)
  end

  def test_get_number_of_passengers
    assert_equal(0, @bus.get_number_of_passengers)
  end

  def test_pick_up__one
    @bus.pick_up(@person1)
    assert_equal(1, @bus.get_number_of_passengers)
  end

  def test_pick_up__two
    @bus.pick_up(@person1)
    @bus.pick_up(@person2)
    assert_equal(2, @bus.get_number_of_passengers)
  end

  def test_drop_off
    @bus.pick_up(@person1)
    @bus.drop_off(@person1)
    assert_equal(0, @bus.get_number_of_passengers)
  end

  def test_empty
    @bus.pick_up(@person1)
    @bus.pick_up(@person2)
    @bus.empty
    assert_equal(0, @bus.get_number_of_passengers)
  end

  def test_pickup_from_stop
    @bus_stop.add_to_queue(@passenger1)
    @bus_stop.add_to_queue(@passenger2)
    @bus.pickup_from_stop(@bus_stop)
    assert_equal(0, @bus_stop.get_number_in_queue)
    assert_equal(2, @bus.get_number_of_passengers)
  end


end
