class Bus

  attr_reader :route, :destination
  attr_accessor :people

  #ReMINDER: REMOVE IF UNNECESSARY

  def initialize(route, destination)
    @route = route
    @destination = destination
    @people = []
  end

  def drive
    return "Brum brum"
  end

  def pickup(person)
    @people << person
    p @people
  end

  def dropper(name)
    @people.delete_if{|x| x.name == name}
  end

  def banisher
    @people = []
  end







end
