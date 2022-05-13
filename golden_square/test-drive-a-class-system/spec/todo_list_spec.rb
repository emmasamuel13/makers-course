require "todo_list"

RSpec.describe TodoList do
  context "returns incomplete todos" do
    it "returns blank when nothing added" do
      todo_list = TodoList.new
      expect(todo_list.incomplete).to eq []
    end

    it "returns walk the dog" do
      todo_list = TodoList.new
      todo_list.add("walk the dog")
      expect(todo_list.incomplete).to eq ["walk the dog"]
    end
  end
end
