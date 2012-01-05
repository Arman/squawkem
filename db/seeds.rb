[ "Appliances & Installation", \
"Architect", \
"Building Inspection", \
"Cabinet Refacing/Instalation", \
"Carpenters & Framers", \
"Carpet & Upholstery Cleaning", \
"Concrete", \
"Drafting", \
"Drainage ", \
"Drywall & Plaster", \
"Electricians", \
"Fencing ", \
"Flooring, Carpet, Vinyl, & Wood", \
"Foundations & Retaining Walls", \
"General Contractors ", \
"Handy Man", \
"Hauling & Dumping", \
"Heating Venting & Air Cooling", \
"Interior Design", \
"Iron & Welding", \
"Kitchen and Bath Design", \
"Kitchen and Bath Installation", \
"Landscape Design ", \
"Landscape Installation", \
"Landscape Maintenance", \
"Leak Detection", \
"Masonry and Brick", \
"Moving & Storage", \
"Painting", \
"Pavers & Driveways", \
"Plumbers", \
"Pool & Spa Installation", \
"Pool & Spa Maintenance", \
"Roofing ", \
"Security Gates", \
"Structural Engineering", \
"Stucco", \
"Termite & Pest", \
"Tile, Stone & Brick", \
"Tree Pruning & Service", \
"Window & Door Installation "\
].each do |os|
  Category.find_or_create_by_name(os)
end


[ "Jim Contractor", "Jose's Paint", "Mike's Windows", \
	"Big Tile and Stone", "Martin's Electrical", "Sean The Carpenter", "Michael's Kitchen and Bath", \
	"Theo's Roofing", "Santa's Plumbing", "DeSoto Concrete", "Mason Masonry", "Leo's Swimming Pools", \
	"Happy Heating and Air Conditioning"].each do |os|
  Business.find_or_create_by_name(os)
end