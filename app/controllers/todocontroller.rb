require_relative '../models/task'
require_relative '../models/view'


class Controller


  def self.run

    # method = ARGV.shift 
    # *arg = ARGV.join(" ")

    # method, *arg = ARGV

    # case method

    # when "list"
    #   display_list
    # when "add"
    #   create_task(arg.join(" "))
    # when "delete"
    #   delete_task(arg[0].to_i)
    # when "complete"
    #   mark_as_complete(arg[0].to_i)
    # when "clear"
    #   clear_list
    # end
  end

  def self.display_lists
    # Be able to view all our lists
    # View.display_list(Task.all)
  end

  def self.create_list
    # Be able to add a new list
  end

  def self.delete_list
    # Be able to delete a list
    # Task.destroy_all
    # View.display_list_cleared
  end

  def self.create_task(list, task_description)
    # Be able to add a new task to a list
    task = Task.create({ text: task_description })
    View.display_added_message(task)
  end

  def self.delete_task(list, display_number)
    # Be able to delete a task from a list
    task = Task.find_by_display_number(display_number)
    View.display_deleted_message(task)
    task.destroy
  end

  def self.mark_as_complete(list, display_number)
    # Be able to mark a task as complete
    task = Task.find_by_display_number(display_number).mark_completed!
    View.display_completed_message(task)
  end


end

