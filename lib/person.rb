class Person
  # your code here
  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=",value)
    end
  end
end

# attributes = { name: "Noela", hair_color: "Black" }

# noela = Person.new(attributes)
# noela.name
# noela.hair_color
