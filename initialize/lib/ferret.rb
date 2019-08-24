class Ferret

  def name
    if @name.nil?
      "a ferret has no name"
    else
      "a ferret's name is #{@name}"
    end
  end

  def give_name(name)
    @name = name || nil
  end

end
