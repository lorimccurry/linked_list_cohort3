class LinkedListItem
  include Comparable

  attr_reader :payload
  attr_reader :next_list_item

  def initialize(item)
    @payload = item
  end


  def === (item)
    self.object_id == item.object_id
  end


  def <=> (item)
    if self.payload.class == item.payload.class
      self.payload <=> item.payload
    elsif self.payload.class == Symbol && item.payload.class == String
      1
    elsif self.payload.class == String && item.payload.class == Fixnum
      1
    elsif self.payload.class == String && item.payload.class == Symbol
      -1
    elsif self.payload.class == Fixnum && item.payload.class == String
      -1
    end
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

