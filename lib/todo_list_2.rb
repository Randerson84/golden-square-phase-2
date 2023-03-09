class TodoList
    def initialize
        @todo_list_2 = []
    end
  
    def add(todo) # todo is an instance of Todo
      @todo_list_2 << todo
    end
  
    def incomplete
      return @todo_list_2
    end
  
    def complete
      # Returns all complete todos
    end
  
    def give_up!
      # Marks all todos as complete
    end
  end