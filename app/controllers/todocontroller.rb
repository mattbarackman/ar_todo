
class Controller


  def run
  end

  def parse_argv
    # map argv to method and arguement
    # map method to controller methods and pass in arguement
  end

  def display_list
    View.display_list(Task.all)
  end

  def create_task(task_description)
  end

  def delete_task(display_number)
  end

  def mark_as_complete(display_number)
  end

  def clear_list
    Task.destroy_all
    display_list
  end

end
