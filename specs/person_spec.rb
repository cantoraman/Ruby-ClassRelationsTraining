require ("minitest/autorun")
require_relative("../person.rb")

class PersonTest < Minitest::Test

  def setup

    @person1 = Person.new("Helen", 27)
    @person2 = Person.new("Can", 33)
    @person3 = Person.new("Tony", 100)
    @person4 = Person.new("Zsolt", 1000)
    @person5 = Person.new("John", 5)

  end


  def test_person_name
    assert_equal("Helen", @person1.name)
  end











end
