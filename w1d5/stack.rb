class Stack
  attr_accessor :array
  def initialize
    @array = Array.new
  end
  def add(el)
    @array.push(el)
  end

  def remove
    # stack_length = @array.length
    @array.pop #if stack_length >= 1
    # puts "Cant delete from an empty stack" if stack_length < 1
  end
  def show
    @array.dup
  end
end

stack = Stack.new
stack.add(1)
stack.show
stack.add(2)
stack.show
stack.add(3)
stack.show
stack.add(4)
stack.show
p stack.add(5)
stack.show
stack.remove
stack.show
stack.remove
stack.show
stack.add(7)
stack.show
p stack.add(30)
stack.show
stack.remove
stack.show
stack.remove
stack.show
stack.remove
stack.show
stack.remove
p stack.show
stack.remove
p stack.show
stack.remove
stack.show
