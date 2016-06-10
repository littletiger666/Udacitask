require_relative 'todolist.rb'

# new_features1 overview
puts "New features 1:\nIt will evaluate your todolist performance"
mytasks = TodoList.new "today's tasks"
mytasks.add_item "appointment with doctor"
mytasks.add_item "cook dinner"
mytasks.add_item "study ruby"
mytasks.add_item "work out"
mytasks.complete 1
mytasks.complete 2
mytasks.items.each do |item|
  puts "#{item.description}:\n complete? #{item.status}"
end
mytasks.overview
puts "\ntype 'return' button to continue"

# new_features2 steps

gets.chomp
puts "New features 2:\nIt can let user write steps when adding new task"
mytasks.add_item "complete udacitask.rb"
puts "#{mytasks.items[-1].description}\nsteps: #{mytasks.items[-1].steps}"
puts "\ntype 'return' button to continue"
# new_features3 deadline

gets.chomp
puts "New features 3:\nIt can let user set deadline when adding new task"
mytasks.add_item "upload my project"
puts "#{mytasks.items[-1].description}\ndeadline: #{mytasks.items[-1].deadline}"
