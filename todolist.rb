class TodoList
    # methods and stuff go here
  attr_accessor :title, :items

  def initialize(list_title)
    @title = list_title
    @items = Array.new
  end

  def add_item(new_item)
    item = Item.new(new_item)
    @items.push(item)
  end

  def remove (position)
    @items.delete_at (position)
  end

  def print
    puts "#{self.title}:"
    @items.each do |item|
      puts "#{item.description} --> #{item.status}"
    end
  end

  def complete (position)
    @items[position].status = true
  end
end

class Item
    # methods and stuff go here
  attr_accessor :description, :status

  def initialize(description)
    @description = description
    @status = false
  end

end
