#####
# without_protection disables mass-assignment protection
#####

Tag.destroy_all
Service.destroy_all

#####
# CSP
#####
Service.create({ :lat => 49.468243, :lng => -2.597061 }, :without_protection => true)
Tag.create({ :name => "Name", :value => "Campbell Sauvarin Photography", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Keywords", :value => "Wedding Photography", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Phone", :value => "07781 154989", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Website", :value => "http://csp.gg", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Email", :value => "studio@csp.gg", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Advert", :value => true, :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Description", :value => "<p>Campbell Sauvarin Photography is a professional photography studio based in Guernsey.</p>
	<p>We specialise in wedding photography with a relaxed, documentary approach, along with portraiture and a variety of commerical assignments.</p>", :service => Service.last }, :without_protection => true)


#####
# Cardboard Orchestra
#####
Service.create({ :lat => 49.468818, :lng => -2.536965 }, :without_protection => true)
Tag.create({ :name => "Name", :value => "Cardboard Orchestra", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Keywords", :value => "Illustration Identity Squid Website Renovate Camper Vans Print Photography", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Phone", :value => "07839 173877", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Website", :value => "http://cardboard-orchestra.com/", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Email", :value => "nik@cardboard-orchestra.com", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Advert", :value => true, :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Description", :value => "<p>
      Illustration</br>
      Fishing for squid</br>
      Identity design</br>
      Website design</br>
      Renovate camper vans</br>
      Print design</br>
      Taking photos on dusty cameras</br>
    </p>", :service => Service.last }, :without_protection => true)

#####
# Hope
#####
Service.create({ :lat => 49.468818, :lng => -2.536965 }, :without_protection => true)
Tag.create({ :name => "Name", :value => "Hope For a Child", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Keywords", :value => "Charity", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Phone", :value => "01481 727547", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Website", :value => "http://hope.gg/", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Email", :value => "office@hopeforachild.org.uk", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Advert", :value => true, :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Description", :value => "<p>We empower parents to thrive in life. To rise above poverty.</p>", :service => Service.last }, :without_protection => true)

#####
# PFM
#####
Service.create({ :lat => 49.431715, :lng => -2.635937 }, :without_protection => true)
Tag.create({ :name => "Name", :value => "Professional Facilities Management", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Keywords", :value => "Facilities Management", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Phone", :value => "01481 267672", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Website", :value => "http://pfm.gg/", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Email", :value => "info@pfm.gg", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Advert", :value => true, :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Description", :value => "<p>Our mission is to provide cost effective quality facilities management to our customers enabling them to focus on their core business activities.</p>
    <p>Using our extensive knowledge and experience, we aim to supply tailored facilities management solutions to our customers by looking at requirements from all angles. Call us today to find out how we can help your business.</p>", :service => Service.last }, :without_protection => true)


#####
# China Red
#####
Service.create( { :lat => 49.46392, :lng => -2.53518 }, :without_protection => true)
Tag.create( { :name => "Keywords", :value => "Restaurant Chinese Takeaway", :service => Service.last }, :without_protection => true)
Tag.create( { :name => "Name", :value => "China Red", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Phone", :value => "01481 723888", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Website", :value => "http://chinaredguernsey.com/", :service => Service.last }, :without_protection => true)

#####
# Guernsey Airport
#####
Service.create({ :lat => 49.43197, :lng => -2.59643 }, :without_protection => true)
Tag.create({ :name => "Name", :value => "Guernsey Airport", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Keywords", :value => "Airport Travel", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Phone", :value => "01481 237766", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Website", :value => "http://www.guernsey-airport.gov.gg/", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Email", :value => "airport@gov.gg", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Address", :value => "Guernsey Airport, La Villiaze, Forest, GY8 0DS", :service => Service.last }, :without_protection => true)

#####
# Captain's
#####
Service.create( { :lat => 49.430754, :lng => -2.558273 }, :without_protection => true)
Tag.create({ name: "Name", value: "The Captain's", :service => Service.last }, :without_protection => true)
Tag.create({ name: "Keywords", value: "Restaurant Hotel Pub", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Phone", :value => "01481 238990", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Website", :value => "http://www.thecaptainshotel.co.uk/", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Email", :value => "enquiries@thecaptainshotel.co.uk", :service => Service.last }, :without_protection => true)

#####
# The Rockmount
#####
Service.create( { :lat => 49.477487, :lng => -2.590425 }, :without_protection => true)
Tag.create({ name: "Name", value: "The Rockmount", :service => Service.last }, :without_protection => true)
Tag.create({ name: "Keywords", value: "Restaurant Pub", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Phone", :value => "01481 256757", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Address", :value => "The Rockmount, Cobo Coast Road, Guernsey, GY5 7HB", :service => Service.last }, :without_protection => true)


#####
# Cobo Bay Hotel
#####
Service.create( { :lat => 49.478219, :lng => -2.590156 }, :without_protection => true)
Tag.create({ name: "Name", value: "Cobo Bay Hotel", :service => Service.last }, :without_protection => true)
Tag.create({ name: "Keywords", value: "Restaurant Hotel Pub", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Phone", :value => "01481 257102", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Website", :value => "http://www.cobobayhotel.com/", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Email", :value => "reservations@cobobayhotel.com", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Address", :value => "The Cobo Bay Hotel, Cobo Coast Road, Castel, GY5 7HB", :service => Service.last }, :without_protection => true)

#####
# Les Douvres
#####
Service.create( { :lat => 49.429908, :lng => -2.559537 }, :without_protection => true)
Tag.create({ name: "Name", value: "Les Douvres", :service => Service.last }, :without_protection => true)
Tag.create({ name: "Keywords", value: "Restaurant Hotel Pub", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Phone", :value => "01481 238731", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Website", :value => "http://www.lesdouvreshotel.co.uk/", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Email", :value => "info@lesdouvreshotel.co.uk", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Address", :value => "Les Douvres Hotel, La Fosse, St Martin's, GY4 6ER", :service => Service.last }, :without_protection => true)

#####
# Bella Luce
#####
Service.create( { :lat => 49.43198, :lng => -2.556705 }, :without_protection => true)
Tag.create({ name: "Name", value: "Bella Luce", :service => Service.last }, :without_protection => true)
Tag.create({ name: "Keywords", value: "Restaurant Hotel Pub", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Phone", :value => "01481 238764", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Website", :value => "http://www.bellalucehotel.com/", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Email", :value => "wakeup@bellalucehotel.com", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Address", :value => "Bella Luce Hotel & Restaurant, La Fosse, St Martins, GY4 6EB", :service => Service.last }, :without_protection => true)


#####
# RED
#####
Service.create( { :lat => 49.458072, :lng => -2.534731 }, :without_protection => true)
Tag.create({ name: "Name", value: "RED", :service => Service.last }, :without_protection => true)
Tag.create({ name: "Keywords", value: "Restaurant Pub", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Phone", :value => "01481 700299", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Website", :value => "http://www.red.gg/", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Email", :value => "eat@red.gg", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Address", :value => "RED, 61 The Pollet, St Peter Port, GY1 1WL", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Twitter", :value => "https://twitter.com/RedGrillHouse", :service => Service.last }, :without_protection => true)

#####
# Ian Browns
#####
Service.create( { :lat => 49.469337, :lng => -2.53441 }, :without_protection => true)
Tag.create({ name: "Name", value: "Ian Browns", :service => Service.last }, :without_protection => true)
Tag.create({ name: "Keywords", value: "Cycle Bicycle", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Phone", :value => "01481 721581", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Website", :value => "http://www.ianbrowns.co.uk/", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Email", :value => "enquiries@ianbrowns.co.uk", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Address", :value => "Ian Browns, Les Banques, St Peter Port, Guernsey GY1 2HZ", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Open", :value => "Monday - Saturday : 8.30am - 5.30pm", :service => Service.last }, :without_protection => true)

#####
# Ian Browns
#####
Service.create( { :lat => 49.452905, :lng => -2.53737 }, :without_protection => true)
Tag.create({ name: "Name", value: "Cock & Bull", :service => Service.last }, :without_protection => true)
Tag.create({ name: "Keywords", value: "Pub", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Phone", :value => "01481 722660", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Address", :value => "Cock & Bull, 2 Lower Hauteville, GY1 1LL", :service => Service.last }, :without_protection => true)

#####
# Recycling
#####
Service.create( { :lat => 49.462141, :lng => -2.532073 }, :without_protection => true)
Tag.create({ name: "Name", value: "Recycling", :service => Service.last }, :without_protection => true)
Tag.create({ name: "Keywords", value: "Recycling", :service => Service.last }, :without_protection => true)

#####
# Cobo Butchers
#####
Service.create( { :lat => 49.485866, :lng => -2.584926 }, :without_protection => true)
Tag.create({ name: "Name", value: "Cobo Butchers", :service => Service.last }, :without_protection => true)
Tag.create({ name: "Keywords", value: "Butchers", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Phone", :value => "01481 258544", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Address", :value => "Cobo Butchers, Grandes Rocques Rd, GY5 7XQ", :service => Service.last }, :without_protection => true)

#####
# Aquarium
#####
Service.create( { :lat => 49.448057, :lng => -2.530177 }, :without_protection => true)
Tag.create({ name: "Name", value: "Aquarium", :service => Service.last }, :without_protection => true)
Tag.create({ name: "Keywords", value: "Aquarium Tourist", :service => Service.last }, :without_protection => true)

#####
# La Valette Underground Military Museum
#####
Service.create( { :lat => 49.448448, :lng => -2.531448 }, :without_protection => true)
Tag.create({ name: "Name", value: "La Valette Underground Military Museum", :service => Service.last }, :without_protection => true)
Tag.create({ name: "Keywords", value: "Museum Tourist", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Phone", :value => "01481 194045", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Address", :value => "La Valette Underground Military Museum, La Valette, St Peter Port, GY1 1AX", :service => Service.last }, :without_protection => true)

#####
# Parking
#####
Service.create( { :lat => 49.458704, :lng => -2.533187 }, :without_protection => true)
Tag.create({ name: "Name", value: "North Beach", :service => Service.last }, :without_protection => true)
Tag.create({ name: "Keywords", value: "Parking", :service => Service.last }, :without_protection => true)
