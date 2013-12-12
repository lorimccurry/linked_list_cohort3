class LinkedListItem
  include Comparable

  attr_reader :payload
  attr_reader :next_list_item

  def initialize(item)
    @payload = item
  end

  def <=> (item)
    self.payload.to_s <=> item.payload.to_s
  end

  def === (item)
    self.object_id == item.object_id
  end

  def next_list_item=(item)
    if item == self
      raise ArgumentError
    else
      @next_list_item = item
    end
  end

  def last?
    if self.next_list_item == nil
      true
    else
      false
    end
  end

end

