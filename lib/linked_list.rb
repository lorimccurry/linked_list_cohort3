class LinkedList

  def intialize

  end


  def add_item(payload)
    if @new_item.nil?
      @new_item = LinkedListItem.new(payload)
    else
      @new_item.next_list_item = LinkedListItem.new(payload)
    end
  end


  def get(index)
    current_item = @new_item
    index.times do
      current_item = current_item.next_list_item
    end
    current_item.payload
  end

end