require_relative '../../config/application'

class CreateLists < ActiveRecord::Migration
  
  def change
    create_table :Lists do |t|
      t.string :name
    end
  end
end
