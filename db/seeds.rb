# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 =  User.create(  :name => 'Alberto' , :email => 'bettin0@hotmail.it', :login => 'bettin0',  :created_at => '0000-00-00 00:00:00', :updated_at => '0000-00-00 00:00:00')
user2 =  User.create(  :name => 'Giuseppe' , :email => 'giuseppe@test.com', :login => 'giuseppe',  :created_at => '0000-00-00 00:00:00', :updated_at => '0000-00-00 00:00:00')
user3 =  User.create(  :name => 'TestUser' , :email => 'testuser@test.com', :login => 'testuser',  :created_at => '0000-00-00 00:00:00', :updated_at => '0000-00-00 00:00:00')
#user =  User.create(  :name => 'TestUser' , :email => 'testuser@test.com', :login => 'testuser',  :created_at => '0000-00-00 00:00:00', :updated_at => '0000-00-00 00:00:00')


place1 =  Place.create(  :name => 'Working Girls' , :address => '259 Kearny Street, San Francisco, CA', :tel => '(415) 398-1390',  :created_at => '0000-00-00 00:00:00', :updated_at => '0000-00-00 00:00:00')
place2 =  Place.create(  :name => 'Urban Picnic' , :address => '125 Kearny Street, San Francisco, CA', :tel => '(415) 433-1233',  :created_at => '0000-00-00 00:00:00', :updated_at => '0000-00-00 00:00:00')
place3 =  Place.create(  :name => 'Bangkok Best Thai Restaurant' , :address => '301 Kearny Street CA 94108', :tel => '(415) 362-2216',  :created_at => '0000-00-00 00:00:00', :updated_at => '0000-00-00 00:00:00')
place4 =  Place.create(  :name => 'Caffe Tiramisu' , :address => '28 Belden Place, San Francisco CA 94104', :tel => '(415) 421-7044',  :created_at => '0000-00-00 00:00:00', :updated_at => '0000-00-00 00:00:00')
place5 =  Place.create(  :name => 'Muracci s Japanese Curry & Grill' , :address => '307 Kearny Street CA 94108', :tel => '(415) 773-1101',  :created_at => '0000-00-00 00:00:00', :updated_at => '0000-00-00 00:00:00')
#place =  Place.create(  :name => '' , :address => '', :tel => '',  :created_at => '0000-00-00 00:00:00', :updated_at => '0000-00-00 00:00:00')

eatvent1 = Eatvent.create(:id => 1,  :creator => 'Alberto' , :where => 'Working Girls', :day => Date.today,  :hour => Time.now , :people => 'Alberto,Giuseppe', :created_at => '0000-00-00 00:00:00', :updated_at => '0000-00-00 00:00:00')
eatvent2 = Eatvent.create( :id => 2, :creator => 'Giuseppe' , :where => 'Caffe Tiramisu', :day => Date.tomorrow,  :hour => Time.now , :people => 'Alberto,TestUser', :created_at => '0000-00-00 00:00:00', :updated_at => '0000-00-00 00:00:00')
#eatvent = Eatvent.create(  :creator => 'Alberto' , :where => 'Working Girls', :day => Date.today,  :hour => Time.now , :people => ['Alberto','Giuseppe'], :created_at => '0000-00-00 00:00:00', :updated_at => '0000-00-00 00:00:00')
