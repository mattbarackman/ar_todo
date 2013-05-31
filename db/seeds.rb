require 'faker'

10.times do 
  Task.create(:text => Faker::Lorem.sentence(word_count = 10))
end
