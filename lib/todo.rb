class Todo
    def initialize(task) # task is a string
        fail "No task given" if task.empty?
        @task = task
    end
  
    def task
      # Returns the task as a string
    end
  
    def mark_done!
      # Marks the todo as done
      # Returns nothing
    end
  
    def done?
      # Returns true if the task is done
      # Otherwise, false
    end
  end