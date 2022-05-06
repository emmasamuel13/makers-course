# As a user
# So that I can keep track of my tasks
# I want a program that I can add todo tasks to and see a list of them.

# As a user
# So that I can focus on tasks to complete
# I want to mark tasks as complete and have them disappear from the list.

class TaskTracker
  def initialize(tasks)
    @task_list = tasks.split(", ")
  end

  def add(task) # adds the task to a list
    @task_list << task
    return @task_list.join("\n")
  end

  def complete(task) # marks the task as complete and removes it from the list
    @task_list.each_with_index do |chore, index|
      if chore == task
        @task_list.delete_at(index)
      end
    end
    return @task_list.join("\n")
  end
end
