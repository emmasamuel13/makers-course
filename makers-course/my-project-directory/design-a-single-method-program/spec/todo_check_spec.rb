#todo_check("TODO - walk the dog") => return string
#todo_check("todo - clean out litter tray") => return string
#todo_check("feed the cats is something I need todo") => return string
#todo_check("feed cats") => return "Congratulations, you've completed all your tasks"
#todo_check(1234) => return "That's not a task!"

require "todo_check"

RSpec.describe "todo_check method" do
  context "the string contains TODO" do
    it "returns the task" do
      result = todo_check("TODO - walk the dog")
      expect(result).to eq "TODO - walk the dog"
    end

    it "returns the task even though TODO is in a different case" do
      result = todo_check("todo - clean out litter tray")
      expect(result).to eq "todo - clean out litter tray"
    end

    it "returns the task even though TODO is in a different case and place" do
      result = todo_check("feed the cats is something I need todo")
      expect(result).to eq "feed the cats is something I need todo"
    end
  end

  context "task does not contain TODO, it's been done" do
    it "returns a congratulatory message as you've completed your tasks" do
      result = todo_check("feed cats")
      expect(result).to eq "Congratulations, you've completed all your tasks"
    end
  end

  context "passes in something that is not a string" do
    it "fails if we pass in something that is not a string" do
      expect { todo_check(1234) }.to raise_error "That's not a task!"
    end
  end
  
end
