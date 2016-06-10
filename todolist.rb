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
    @items.delete_at (position-1)
  end

  def print
    puts "#{self.title}:"
    @items.each do |item|
      item.print
    end
  end

  def complete (position)
    @items[position-1].status = true
  end

  def complete? (position)
    @items[position-1].status
  end

  def overview
    finished_task = @items.select { |task| task.status == true }.length
    if finished_task == @items.length
      puts "You have finished all the tasks, well done!"
    elsif finished_task > @items.length/2
      puts "You have finished almost all the tasks, good job!"
    elsif finished_task >0 && finished_task <= @items.length/2
      puts "You have finished just a few tasks, wanna do 1 or 2 more?"
    else
      puts "You haven't finished any task, weak up and start doing it now!"
    end
  end
end

class Item
    # methods and stuff go here
  attr_accessor :description, :status, :steps, :deadline

  def initialize(description)
    @description = description
    @status = false
    puts "#{@description}, add steps:"
    step = $stdin.gets.chomp
    @steps = step
    puts "#{@description}, add deadline:"
    time = $stdin.gets.chomp
    @deadline = time
  end

  def print
    if self.steps == "" && self.deadline == ""
      puts "#{self.description} --> #{self.status}"
    elsif self.steps != "" && self.deadline == ""
      puts "#{self.description} --> #{self.status} \nsteps: #{self.steps}"
    elsif self.steps == "" && self.deadline != ""
      puts "#{self.description} --> #{self.status} \ndeadline: #{self.deadline}"
    else
      puts "#{self.description} --> #{self.status} \nsteps: #{self.steps} \ndeadline: #{self.deadline}"
    end
  end

end
