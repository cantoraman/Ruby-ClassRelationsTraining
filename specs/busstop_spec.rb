require ("minitest/autorun")
require_relative("../busstop.rb")
require_relative("../bus.rb")
require_relative("../person.rb")


class BusStopTest < Minitest::Test

  def setup
    @busstop = BusStop.new("North Bridge")
    @person1 = Person.new("Helen", 27)
    @person2 = Person.new("Can", 33)
    @person3 = Person.new("Tony", 100)
    @person4 = Person.new("Zsolt", 1000)
    @person5 = Person.new("John", 5)
    @bus = Bus.new(22, "Ocean Terminal")
  end


  def test_bus_stop_name
    assert_equal("North Bridge", @busstop.name)
  end

  def test_queue_adder
    @busstop.queue_adder(@person3)
    @busstop.queue_adder(@person4)
    assert_equal(2, @busstop.queue.length)
  end


  def test_collector
    @busstop.queue_adder(@person3)
    @busstop.queue_adder(@person4)
    @busstop.queue_adder(@person5)
    @bus.people = @busstop.collector()
    assert_equal(0, @busstop.queue.length)
    assert_equal(3, @bus.people.length)
  end


end
