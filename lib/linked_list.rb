class LinkedList
  attr_accessor :new_item

  def initialize(*payload)
    @count = 0
  end


  def add_item(payload)
    if @new_item.nil?
      @new_item = LinkedListItem.new(payload)
      @count += 1
    else
      current_item = @new_item
      while !current_item.last?
        current_item = current_item.next_list_item
      end
      current_item.next_list_item = LinkedListItem.new(payload)
      @count += 1
    end
  end


  def get(index)
    if index < 0
      raise IndexError
    elsif @new_item == nil
      raise IndexError
    else
      current_item = @new_item
      index.times do
        current_item == nil ? (raise IndexError) : current_item = current_item.next_list_item
      end
      current_item.payload
    end
  end

  def size
    @count
  end

end