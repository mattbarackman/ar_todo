
class Controller


  def run

    # method = ARGV.shift 
    # *arg = ARGV.join(" ")

    method, *arg = ARGV

    case method

    when "list"
      display_list
    when "add"
      create_task(arg.join(" "))
    when "delete"
      delete_task(arg[0])
    when "complete"
      mark_as_complete(arg[0])
    end
  end

  def display_list
    View.display_list(Task.all)
  end

  def create_task(task_description)
    Task.create({ text: task_description })
  end

  def delete_task(display_number)
    Task.find_by_display_number(display_number).destroy
  end

  def mark_as_complete(display_number)
    Task.find_by_display_number(display_number).mark_completed!
  end

  def clear_list
    Task.destroy_all
    View.display_list_cleared
  end

end

