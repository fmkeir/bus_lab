class BusStop
  def initialize(name)
    @name = name
    @queue = []
  end

  def get_number_in_queue
    return @queue.length()
  end

  def add_to_queue(passenger)
    @queue.push(passenger)
  end

  def remove_from_front_of_queue
    @queue.shift
  end

  def get_passenger_at_front_of_queue
    return @queue[0]
  end
end
