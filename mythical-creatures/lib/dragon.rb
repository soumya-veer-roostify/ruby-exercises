class Dragon
  attr_reader :name, :color, :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @number_of_times_eaten = 0
  end

  def hungry?
    @hungry
  end

  def eat
    if number_of_times_eaten > 2
      @hungry = false
    else
      @hungry = true
    end
  end

  private

  def number_of_times_eaten
    @number_of_times_eaten += 1
  end
end
