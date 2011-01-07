class Session
  attr_accessor :name, :windows, :commands
  
  def initialize(name)
    @name = name
    @windows = []
    @commands = []
  end

  def window(name)
    w = block_given? ? Window.new(name, yield) : Window.new(name, [])
    @windows << w
  end
end
