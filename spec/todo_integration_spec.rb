require "todo"
require "todo_list_2"

RSpec.describe "Integration tests" do
    context "after adding one entry" do
        it "lists the tasks added but not completed" do
            todo_list = TodoList.new
            todo_entry = Todo.new("Clean kitchen")
            todo_list.add(todo_entry)
            expect(todo_list.incomplete).to eq [todo_entry]
        end
        it "lists the tasks added and completed" do
            todo_list = TodoList.new
            todo_entry = Todo.new("Clean kitchen")
            todo_list.add(todo_entry)
            todo_entry.mark_done!
            expect(todo_list.complete).to eq [todo_entry]
        end
    end
    context "after adding multiple entries" do
        it "lists the tasks added but not completed multiple tasks" do
            todo_list = TodoList.new
            todo_entry = Todo.new("Clean kitchen")
            todo_entry1 = Todo.new("Clean bathroom")
            todo_entry2 = Todo.new("Clean bedroom")
            todo_list.add(todo_entry)
            todo_list.add(todo_entry1)
            todo_list.add(todo_entry2)
            expect(todo_list.incomplete).to eq [todo_entry, todo_entry1, todo_entry2]
        end
        it "lists the tasks added and completed" do
            todo_list = TodoList.new
            todo_entry = Todo.new("Clean kitchen")
            todo_entry1 = Todo.new("Clean bathroom")
            todo_entry2 = Todo.new("Clean bedroom")
            todo_list.add(todo_entry)
            todo_list.add(todo_entry1)
            todo_list.add(todo_entry2)
            todo_entry.mark_done!
            expect(todo_list.complete).to eq [todo_entry]
        end
        it "lists the tasks added and completed" do
            todo_list = TodoList.new
            todo_entry = Todo.new("Clean kitchen")
            todo_entry1 = Todo.new("Clean bathroom")
            todo_entry2 = Todo.new("Clean bedroom")
            todo_list.add(todo_entry)
            todo_list.add(todo_entry1)
            todo_list.add(todo_entry2)
            todo_list.give_up!
            expect(todo_list.complete).to eq [todo_entry, todo_entry1, todo_entry2]
        end
    end
end