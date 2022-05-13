require "todo_list"
require "todo"

RSpec.describe "integration" do
  context "returns completed tasks" do
    it "returns a completed task" do
      todo_list = TodoList.new
      todo = Todo.new("walk the dog")
      todo.mark_done!
      todo_list.add(todo)
      expect(todo_list.complete).to eq ["walk the dog"]
    end

    it "returns multiple completed tasks" do
      todo_list = TodoList.new
      todo1 = Todo.new("walk the dog")
      todo2 = Todo.new("feed cats")
      todo3 = Todo.new("go to supermarket")
      todo1.mark_done!
      todo3.mark_done!
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo_list.add(todo3)
      expect(todo_list.complete).to eq ["walk the dog", "go to supermarket"]
    end
  end

  context "marks all as completed" do
    it "marks all tasks as completed - none complete already" do
      todo_list = TodoList.new
      todo1 = Todo.new("walk the dog")
      todo2 = Todo.new("feed cats")
      todo3 = Todo.new("go to supermarket")
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo_list.add(todo3)
      todo_list.give_up!
      expect(todo_list.complete).to eq ["walk the dog", "feed cats", "go to supermarket"]
    end

    it "marks all tasks as completed - none complete already" do
      todo_list = TodoList.new
      todo1 = Todo.new("walk the dog")
      todo2 = Todo.new("feed cats")
      todo3 = Todo.new("go to supermarket")
      todo2.mark_done!
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo_list.add(todo3)
      todo_list.give_up!
      expect(todo_list.complete).to eq ["walk the dog", "feed cats", "go to supermarket"]
    end
  end
end
