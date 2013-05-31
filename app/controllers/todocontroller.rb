require_relative '../models/task'
require_relative '../models/view'


class Controller


  def self.run

    # method = ARGV.shift 
    # *arg = ARGV.join(" ")

    method, *arg = ARGV

    case method

    when "list"
      display_list
    when "add"
      create_task(arg.join(" "))
    when "delete"
      delete_task(arg[0].to_i)
    when "complete"
      mark_as_complete(arg[0].to_i)
    when "clear"
      clear_list
    end
  end

  def self.display_list
    View.display_list(Task.all)
  end

  def self.create_task(task_description)
    task = Task.create({ text: task_description })
    View.display_added_message(task)
  end

  def self.delete_task(display_number)
    task = Task.find_by_display_number(display_number)
    View.display_deleted_message(task)
    task.destroy
  end

  def self.mark_as_complete(display_number)
    task = Task.find_by_display_number(display_number).mark_completed!
    View.display_completed_message(task)
  end

  def self.clear_list
    Task.destroy_all
    View.display_list_cleared
  end

end

