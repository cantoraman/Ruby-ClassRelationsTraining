class BusStop
  attr_reader :name
  attr_accessor :queue

  def initialize(name)
    @name = name
    @queue = []
  end


  def queue_adder(person)
    @queue << person
  end







  





end
