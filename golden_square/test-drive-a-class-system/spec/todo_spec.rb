require "todo"

RSpec.describe Todo do
  context "returns task" do
    it "returns nothing" do
      todo = Todo.new("")
      expect(todo.task).to eq ""
    end

    it "returns walk the dog" do
      todo = Todo.new("walk the dog")
      expect(todo.task).to eq "walk the dog"
    end
  end

  context "marks task as done" do
    it "returns true" do
      todo = Todo.new("walk the dog")
      todo.mark_done!
      expect(todo.done?).to eq true
    end
  end

end
