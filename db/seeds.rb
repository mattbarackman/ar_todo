require 'faker'

LIST_NAMES = ['Monday', 'Wednesday', 'Friday', 'Funday']

lists = LIST_NAMES.map { |name| List.create(name: name) }

lists.each do |list| 
  10.times do 
    list.tasks.create(:text => Faker::Lorem.sentence(word_count = 10))
  end
end

