require ("minitest/autorun")
require_relative("../bus.rb")
require_relative("../person.rb")
class BusTest < Minitest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @person1 = Person.new("Helen", 27)
    @person2 = Person.new("Can", 33)
    @person3 = Person.new("Tony", 100)
    @person4 = Person.new("Zsolt", 1000)
    @person5 = Person.new("John", 5)
  end

  def test_route
    assert_equal(22,@bus.route)
  end

  def test_drive
    assert_equal("Brum brum",@bus.drive())
  end

  def test_passenger_count
    assert_equal(0, @bus.people.length)
  end

  def test_pickup
    @bus.pickup(@person1)
    assert_equal(1, @bus.people.length)
  end

  def test_dropper
    @bus.pickup(@person4)
    @bus.pickup(@person2)
    @bus.pickup(@person3)
    @bus.dropper(@person2.name)
    assert_equal(false, @bus.people.include?(@person2.name))
  end

  def test_banisher
    @bus.banisher
    assert_equal(0, @bus.people.length)
  end



end
