class Todo
    def initialize(task) # task is a string
        fail "No task given" if task.empty?
        @task = task
        @complete = false
    end
  
    def task
      return @task.to_s
    end
  
    def mark_done!
      @complete = true
    end
  
    def done?
      if @complete == true
        return true
      else 
        return false
      end
    end
  end