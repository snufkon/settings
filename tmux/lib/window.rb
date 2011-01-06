class Window
  attr_accessor :name, :commands

  def initialize(name, commands)
    @name = name
    @commands = commands.nil? ? [] : commands
  end
end
