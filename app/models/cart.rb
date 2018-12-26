class Cart

attr_reader :contents

  def initialize(cart)
    @contents = cart || Hash.new(0)
  end

  def total_item_count
    @contents.values.sum
  end

  def add_item(item_id)
    item_id_string = item_id.to_s
    @contents[item_id_string] ||= 0
    @contents[item_id_string] += 1
  end

  def count_of(item_id)
    @contents[item_id.to_s] ||= 0
  end
end
