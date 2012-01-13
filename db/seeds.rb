Category.all.each do |c| 
	c.delete
end

[ "Appliances",\
"Architects, Engineers, & Drafting",\
"Building & Property Inspections",\
"Cabinet & Countertop",\
"Carpentry, Framing, & Woodworking",\
"Cleaning Services",\
"Closet Organizer Systems",\
"Concrete",\
"Drywall & Plaster",\
"Electricians",\
"Fencing & Decking",\
"Flooring, Carpet, Vinyl, & Wood",\
"Foundations & Retaining Walls",\
"Garage Doors",\
"General Contractors",\
"Glass & Mirror Installation",\
"Grading & Site Prep",\
"Handyman Services",\
"Heating Venting & AC",\
"Home Security & Alarms",\
"Home Theater",\
"Insulation & Weatherstripping",\
"Interior Decorators",\
"Landscape Design ",\
"Landscape Installation",\
"Landscape Maintenance",\
"Lighting",\
"Moving & Storage",\
"Painting & Staining",\
"Pavers, Patios, & Driveways",\
"Play Structures",\
"Plumbers",\
"Pool & Spa & Sauna Installation",\
"Pool & Spa Maintenance",\
"Rental Equipment",\
"Roofing",\
"Security Gates",\
"Sewer, Septic, & Drainage",\
"Sheds, Gazebos, & Outbuildings",\
"Siding, Gutters & Exterior Trim",\
"Solar Electrical Panels",\
"Solar Pool Heating",\
"Sports Courts & Synthetic Grass",\
"Stucco",\
"Termite & Pest Control",\
"Tile, Stone, & Brick",\
"Tree & Shrub Service",\
"Wall Paper & Coverings",\
"Windows, Doors, & Skylights"\
].each do |os|
  Category.find_or_create_by_name(os)
end

if Rails.env.development?

	Business.all.each do |b| 
		b.delete
	end


	[ "Jim Contractor", "Jose's Paint", "Mike's Windows", \
		"Big Tile and Stone", "Martin's Electrical", "Sean The Carpenter", "Michael's Kitchen and Bath", \
		"Theo's Roofing", "Santa's Plumbing", "DeSoto Concrete", "Mason Masonry", "Leo's Swimming Pools", \
		"Happy Heating and Air Conditioning"].each do |os|
	  Business.find_or_create_by_name(os)
	end

end