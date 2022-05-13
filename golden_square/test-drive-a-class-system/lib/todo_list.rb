class TodoList
  def initialize
    @todo_list = []
    @completed = []
  end

  def add(todo)
    @todo_list << todo
  end

  def incomplete
    return @todo_list
  end

  def complete
    @todo_list.each do |task|
      if task.done?
        @completed << task.task
      end
    end
    return @completed
  end

  def give_up!
    @todo_list.each do |task|
      unless task.done?
        task.mark_done!
      end
    end
  end
end
