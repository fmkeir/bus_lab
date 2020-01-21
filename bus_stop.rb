class BusStop
  def initialize(name)
    @name = name
    @queue = []
  end

  def number_of_passengers
    return @queue.length()
  end

  def add_to_queue(passenger)
    @queue.push(passenger)
  end
end
