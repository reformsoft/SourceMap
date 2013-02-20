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

#####
# Guernsey Airport
#####
Service.create({ :lat => 49.43197, :lng => -2.59643 }, :without_protection => true)
Tag.create({ :name => "Name", :value => "Guernsey Airport", :service => Service.last }, :without_protection => true)
Tag.create({ :name => "Keywords", :value => "Airport Travel", :service => Service.last }, :without_protection => true)

#####
# Captin's
#####
Service.create( { :lat => 49.43177, :lng => -2.55713 }, :without_protection => true)
Tag.create({ name: "Name", value: "The Captin's", :service => Service.last }, :without_protection => true)
Tag.create({ name: "Keywords", value: "Restaurant Pub", :service => Service.last }, :without_protection => true)