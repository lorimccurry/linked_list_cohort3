class LinkedList
  attr_accessor :head_node

  def initialize(*payload)
    @count = 0
    @last = nil
    # @s = payload
  end

  def to_s
    if @s == nil
      "| |"
    else
      "| #{@s} |"
    end
  end


  def add_item(payload)
    if @head_node.nil?
      @head_node = LinkedListItem.new(payload)
      @count += 1
      @last = @head_node
      @s = @head_node.payload
    else
      current_item = @head_node
      while !current_item.last?
        current_item = current_item.next_list_item
      end
      current_item.next_list_item = LinkedListItem.new(payload)
      @count += 1
      @last = current_item.next_list_item
      @s += ', ' + current_item.next_list_item.payload
    end
  end


  def get(index)
    if index < 0
      raise IndexError
    elsif @head_node == nil
      raise IndexError
    else
      current_item = @head_node
      index.times do
        current_item == nil ? (raise IndexError) : current_item = current_item.next_list_item
      end
      current_item.payload
    end
  end

  def size
    @count
  end

  def last
    @head_node.nil? ? nil : @last.payload
  end

end