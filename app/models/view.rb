class View

  def self.display_list_cleared
    puts "All tasks deleted. Let's start a fresh list!" 
  end

  def self.display_added_message(task)
    puts "You added the task:"
    puts task.text
  end

  def self.display_deleted_message(task)
    puts "You deleted the task:"
    puts task.text
  end

  def self.display_list(tasks)

  end

end
