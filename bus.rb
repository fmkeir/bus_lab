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
    
  end



end
