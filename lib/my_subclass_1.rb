
class My_subclass_1
  def initialize
  end

  # FAKE DATABASE *********
  @@sub_class = {}
  @@total_rows = 0

  # CREATE ****************
  def create_method()
    @@sub_class[self.id] = Sub_class.new({ :name => self.name, :id => self.id })
  end

  # READ*****************
  def read_method()

  end


  # UPDATE***************
  def update(thing)
    self.thing = thing
    @@sub_class[self.id] = Sub_class.new({ :thing => self.thing, :id => self.id })
  end

  # DELETE***************
  def self.delete
    @@sub_class = {}
    @@total_rows = 0
  end

end
