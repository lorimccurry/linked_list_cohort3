class LinkedList
  attr_accessor :head_node

  def initialize(*payload)
    @count = 0
    @last = nil
    payload.each do |item|
      add_item(item)
    end
  end

  def to_s
    if @last == nil
      "| |"
    else
      current_item = @head_node
      first_payload = @head_node.payload
      while !current_item.last?
        current_item = current_item.next_list_item
        first_payload << ", " + current_item.payload
      end
      "| #{first_payload} |"
    end
  end


  def add_item(payload)
    if @head_node.nil?
      @head_node = LinkedListItem.new(payload)
      @count += 1
      @last = @head_node
    else
      current_item = @head_node
      while !current_item.last?
        current_item = current_item.next_list_item
      end
      current_item.next_list_item = LinkedListItem.new(payload)
      @count += 1
      @last = current_item.next_list_item
    end
  end


  def get(index)
    if index < 0
      raise IndexError
    elsif @head_node.nil?
      raise IndexError
    else
      current_item = @head_node
      index.times do
        current_item.nil? ? (raise IndexError) : current_item = current_item.next_list_item
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