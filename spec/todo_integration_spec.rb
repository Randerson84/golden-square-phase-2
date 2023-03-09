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

    end
    context "after adding multiple entries" do
        it "lists the tasks added but not completed multiple tasks" do
            todo_list = TodoList.new
            todo_entry = Todo.new("Clean kitchen")
            todo_entry = Todo.new("Clean bathroom")
            todo_entry = Todo.new("Clean bedroom")
            todo_list.add(todo_entry)
            expect(todo_list.incomplete).to eq [todo_entry]
        end

    end
end