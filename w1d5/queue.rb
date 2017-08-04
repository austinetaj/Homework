class Queue
  attr_accessor :array
  def initialize
    @array = Array.new
  end
  def enqueue(el)
    @array.push(el)
  end

  def dequeue
    queue_length = @array.length
    @array.delete_at(0) if queue_length >= 1
    puts "Can't delete from an empty queue" if queue_length < 1
  end
  def show
    puts "#{@array}"
  end
end

queue = Queue.new
queue.enqueue(1)
queue.show
queue.enqueue(2)
queue.show
queue.enqueue(3)
queue.show
queue.enqueue(4)
queue.show
queue.enqueue(5)
queue.show
queue.dequeue
queue.show
queue.dequeue
queue.show
queue.enqueue(7)
queue.show
queue.enqueue(30)
queue.show
queue.dequeue
queue.show
queue.dequeue
queue.show
queue.dequeue
queue.show
queue.dequeue
queue.show
queue.dequeue
queue.show
queue.dequeue
queue.show
