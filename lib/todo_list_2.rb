class TodoList
    def initialize
        @todo_list_2 = []
    end
  
    def add(todo) # todo is an instance of Todo
      @todo_list_2 << todo
    end
  
    def incomplete
        incomplete_tasks = @todo_list_2.select do |complete| 
            !complete.done?
          end
          return incomplete_tasks
    end
  
    def complete
      # Returns all complete todos
      completed_tasks = @todo_list_2.select do |complete| 
        complete.done?
      end
      return completed_tasks
    end
  
    def give_up!
      # Marks all todos as complete
      tasks = @todo_list_2.each do |complete|
        complete.mark_done!
      end
      return tasks
    end
  end