class Session
  attr_accessor :name, :windows, :commands
  
  def initialize(name)
    @name = name
    @windows = []
    @commands = []
  end
end
