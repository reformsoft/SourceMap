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

#####
# China Red
#####
Service.create( { :lat => 49.46392, :lng => -2.53518 }, :without_protection => true)
Tag.create( { :name => "Keywords", :value => "Restaurant Chinese Takeaway", :services => [ Service.last ] }, :without_protection => true)
Tag.create( { :name => "Name", :value => "China Red", :services => [ Service.last ] }, :without_protection => true)

#####
# Guernsey Airport
#####
Service.create({ :lat => 49.43197, :lng => -2.59643 }, :without_protection => true)
Tag.create({ :name => "Name", :value => "Guernsey Airport", :services => [ Service.last ] }, :without_protection => true)
Tag.create({ :name => "Keywords", :value => "Airport Travel", :services => [ Service.last ] }, :without_protection => true)

#####
# Captin's
#####
Service.create( { :lat => 49.43177, :lng => -2.55713 }, :without_protection => true)
Tag.create({ name: "Name", value: "The Captin's", :services => [ Service.last ] }, :without_protection => true)
Tag.create({ name: "Keywords", value: "Restaurant Pub", :services => [ Service.last ] }, :without_protection => true)