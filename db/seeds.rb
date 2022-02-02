require 'csv'

puts "Importing preferences..."
CSV.foreach(Rails.root.join("db/seeds/preferences.csv"), headers: true) do |row|
  Preference.create! do |preference|
    preference.id = row[0]
    preference.name = row[1]
  end
end
