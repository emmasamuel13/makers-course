# As a user
# So that I can keep track of my tasks
# I want a program that I can add todo tasks to and see a list of them.

# As a user
# So that I can focus on tasks to complete
# I want to mark tasks as complete and have them disappear from the list.

class TaskTracker
  def initialize(tasks)
    @task_list = []
    @task_list << tasks.split(", ")    
  end

  def add(task) # adds the task to a list
    @task_list << task
    return @task_list.join("\n")
  end

  def complete(task) # marks the task as complete and removes it from the list
    new_list = []
    puts "here is task #{task}"
    @task_list.each do |chore|
      puts "here is chore #{chore}"
      unless chore == task
        new_list << chore
      end
    end
    return new_list.join("\n")
  end
end

taskTracker = TaskTracker.new("feed the cats, take medication, empty washing machine, walk the dog")
puts taskTracker.complete("take medication")
