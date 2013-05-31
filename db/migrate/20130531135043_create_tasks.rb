require_relative '../../config/application'

class CreateTasks < ActiveRecord::Migration
  
  def change
    create_table :Tasks do |t|
      t.string :text
      t.boolean :completed, :default => 0
    end
  end
end
