class View

  def show_all_lists(lists)
    puts "Lists"
    1.upto(lists.length) do |i|
      puts "#{i.to_s.rjust(3)}. #{lists[i-1].name}"
    end
  end

  def self.display_list_cleared
    puts "All tasks deleted. Let's start a fresh list!" 
  end

  def self.display_added_message(task)
    puts "You added the task:"
    puts task.text
  end

  def self.display_completed_message(task)
    puts "Congrats! You completed the task:"
    puts task.text
  end

  def self.display_deleted_message(task)
    puts "You deleted the task:"
    puts task.text
  end

  def self.display_list(tasks)
    puts "Tasks:"
    1.upto(tasks.length) do |i|
      puts "#{i.to_s.rjust(3)}. [#{tasks[i-1].completed ? "X": " "}] #{tasks[i-1].text}" 
    end
  end

end
