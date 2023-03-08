require 'todo_list'

RSpec.describe "Todolist" do
    it "no tasks given" do
        todo_list = Todolist.new
        expect{todo_list.show_tasks}.to raise_error "No tasks" 
    end
    it "add tasks" do
        todo_list = Todolist.new
        todo_list.add_task("Walk the dog")
        expect(todo_list.show_tasks).to eq ["Walk the dog"]
    end
    it "add multiple tasks" do
        todo_list = Todolist.new
        todo_list.add_task("Walk the dog")
        todo_list.add_task("Clean the kitchen")
        todo_list.add_task("Clean the bathroom")
        expect(todo_list.show_tasks).to eq ["Walk the dog","Clean the kitchen","Clean the bathroom"]
    end
    it "complete all tasks" do
        todo_list = Todolist.new
        todo_list.add_task("Walk the dog")
        todo_list.complete_task("Walk the dog")
        expect{todo_list.show_tasks}.to raise_error "No tasks" 
    end
    it "completes one of the tasks" do
        todo_list = Todolist.new
        todo_list.add_task("Walk the dog")
        todo_list.add_task("Clean the kitchen")
        todo_list.complete_task("Walk the dog")
        expect(todo_list.show_tasks).to eq ["Clean the kitchen"]
    end
end 