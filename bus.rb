class Bus
  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum brum"
  end

  def number_of_passengers
    return @passengers.count()
  end

  def add_passenger(passenger)
    @passengers.push(passenger)
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty
    @passengers = []
  end

  def pickup_from_stop(bus_stop)
    while bus_stop.number_of_passengers > 0
      @passengers.push(bus_stop.get_passenger_at_front_of_queue)
      bus_stop.remove_from_front_of_queue
    end
  end



end
