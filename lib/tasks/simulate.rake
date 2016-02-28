desc 'build a ton of stuff'
task simulate: :environment do

  puts "creating races"
  5000.times do |i|
    Race.find_or_create_by(title: "title_#{i}")
  end

  puts "creating participants"
  Race.find_each do |race|
    puts "race: #{race.id}"
    (1000 - race.participants.count).times do
      Participant.create(race: race)
    end
  end
  
  puts "done!"
end
