class LinkedList
  attr_accessor :new_item

  def intialize
    #@count = 0 possibly might need this later
  end


  def add_item(payload)
    if @new_item.nil?
      @new_item = LinkedListItem.new(payload)
    else
      current_item = @new_item
      while !current_item.last?
        current_item = current_item.next_list_item
      end
      current_item.next_list_item = LinkedListItem.new(payload)
    end
  end


  def get(index)
    if @new_item == nil
      raise IndexError
    else
      current_item = @new_item
      index.times do
        current_item = current_item.next_list_item
      end
      current_item.payload
    end
  end

end