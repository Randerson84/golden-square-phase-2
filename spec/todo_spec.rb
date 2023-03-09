require "todo"

RSpec.describe Todo do
    context "construction" do
        it "empty task" do
            expect{Todo.new("")}.to raise_error 'No task given'
        end
    end

end