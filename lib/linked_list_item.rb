class LinkedListItem
  include Comparable

  attr_accessor :payload
  attr_reader :next_list_item

  def initialize(item)
    @payload = item
  end


  def === (item)
    self.object_id == item.object_id
  end

  def <=>(item)
    case [self.payload.class, item.payload.class]
    when [Symbol, String], [String, Fixnum] then 1
    when [String, Symbol], [Fixnum, String] then -1
    when [Symbol, Symbol], [String, String], [Fixnum, Fixnum]
      self.payload <=> item.payload
    end
  end


  def next_list_item=(item)
    item == self ? (raise ArgumentError) : @next_list_item = item
  end


  def last?
    self.next_list_item == nil ? true : false
  end

end

