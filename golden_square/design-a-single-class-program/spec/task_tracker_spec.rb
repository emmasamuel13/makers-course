require "task_tracker"

RSpec.describe TaskTracker do
  let(:task_list) { "feed the cats
empty washing machine
walk the dog" }

  context "adds tasks to the task list" do
    it "returns task list with walk the dog at the end" do
      task_tracker = TaskTracker.new("feed the cats, empty washing machine")
      expect(task_tracker.add("walk the dog")).to eq task_list
    end
  end

  context "removes completed tasks" do
    it "returns task list with take medication removed" do
      task_tracker = TaskTracker.new("feed the cats, take medication, empty washing machine, walk the dog")
      expect(task_tracker.complete("take medication")).to eq task_list
    end
  end
end
