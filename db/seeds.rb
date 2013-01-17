# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#####
# without_protection disables mass-assignment protection
#####

Tag.destroy_all
Service.destroy_all
Location.destroy_all

#####
# China Red
#####
Location.create(:lat => 49.46392, :lng => -2.53518)
Service.create( { :name => "China Red", :location => Location.last }, :without_protection => true)
Tag.create( { :name => "Restaurant", :services => [ Service.last ] }, :without_protection => true)
Tag.create( { :name => "Chinese", :services => [ Service.last ] }, :without_protection => true)
Tag.create( { :name => "Takeaway", :services => [ Service.last ] }, :without_protection => true)

#####
# Guernsey Airport
#####
Location.create(:lat => 49.43197, :lng => -2.59643)
Service.create({ :name => "Guernsey Airport", :location => Location.last }, :without_protection => true)
Tag.create({:name => "Airport", :services => [ Service.last ] }, :without_protection => true)


#####
# Captin's
#####
Location.create(:lat => 49.43177, :lng => -2.55713)
Service.create( { :name => "Captain's", :location => Location.last }, :without_protection => true)
Tag.find_by_name("Restaurant").services << Service.last
Tag.create({:name => "Pub", :services => [ Service.last ] }, :without_protection => true)
