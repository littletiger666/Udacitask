require_relative 'todolist.rb'

# Creates a new todo list
tasks = TodoList.new "tasks for today"
# Add four new items
tasks.add_item "appointment with doctor"
tasks.add_item "cook dinner"
tasks.add_item "study ruby"
tasks.add_item "work out"
# Print the list
tasks.print
# Delete the first item
tasks.remove 1
# Print the list
tasks.print
# Delete the second item
tasks.remove 2
# Print the list
tasks.print
# Update the completion status of the first item to complete
tasks.complete 1
# Print the list
tasks.print
# Update the title of the list
tasks.title = "tasks for tomorrow"
# Print the list
tasks.print
