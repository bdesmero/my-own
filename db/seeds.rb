# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'Creating User'
  User.create(
    :username => 'admin',
    :password => 'password',
    :password_confirmation => 'password'
  )


puts 'Creating Score'
  Score.create()
  

puts 'Creating Words'
  agent = Mechanize.new
  agent.get("http://www.topikguide.com/2012/07/topik-beginner-level-vocabulary-list-with-meanings.html")  
  terms = agent.page.search('table tr td[1]').map(&:text).map(&:strip)
  translations = agent.page.search('table tr td[2]').map(&:text).map(&:strip)
  index = 0
  terms.each do |term|
    Word.create(:term => term, :translation => translations[index]) if ((term != 'Korean Word') && (term != ''))
    puts '.'
    index += 1
  end
  
