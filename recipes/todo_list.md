As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

# EXAMPLE

class Todolist
  def initialize()
    taks_list = []
  end

  def add_task(task) # task is a string
    # No return value
  end

  def show_tasks()
    # Throws an exception if no tasks exist
    # Otherwise, returns a list of tasks.
  end

  def complete_task(task)
    # No return value
    #Throws an exception if the task doesn't exist
  end
end

# EXAMPLES

# 1
todo_list = Todo.new
todo_list.add_task("Walk the dog")
todo_list.show_tasks() # => [Walk the dog]

# 2
todo_list = Todo.new
todo_list.add_task("Walk the dog")
todo_list.add_task("Clean the kitchen")
todo_list.show_tasks() # => [Walk the dog, Clean the kitchen]

# 3
todo_list = Todo.new
todo_list.add_task("")
todo_list.show_tasks() # => "No tasks"

# 4 
todo_list = Todo.new
todo_list.add_task("Walk the dog")
todo_list.complete_task("Walk the dog")
todo_list.show_tasks() # => "No tasks"

# 5
todo_list = Todo.new
todo_list.add_task("Walk the dog")
todo_list.add_task("Clean the kitchen")
todo_list.complete_task("Walk the dog")
todo_list.show_tasks() # => ["Clean the kitchen"]

