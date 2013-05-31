class Task < ActiveRecord::Base


  # Task.create(args) : create a new task

  # Task.destroy_all : deletes all tasks

  # Task.all : lists all tasks

  # task.destroy
  # Task.find(15).destroy
  # Task.destroy(15)
  # Task.where(:age => 15).destroy_all
  # Task.destroy_all(:age => 15)

  # Task.update(15, :user_name => 'Samuel', :group => 'expert')

  def mark_completed!
  end

  def find_by_display_number(n)
  end



end
