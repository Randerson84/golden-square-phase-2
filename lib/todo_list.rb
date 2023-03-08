class Todolist
    def initialize
        @task_list = []
    end
    def add_task(task)
        @task_list << task
    end
    def complete_task(task)
        @task_list.delete_if {|value| value == task}
    end
    def show_tasks
        fail "No tasks" if @task_list.empty?
        return @task_list
    end
end
