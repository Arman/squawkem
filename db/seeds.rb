[ "General Contractors", "Paint & Interior Finishes", "Windows, Doors and Siding", \
	"Landscape Design", "Tile and Stone", "Electrical", "Carpenters", "Kitchen and Bath", \
	"Roofing", "Plumbing", "Concrete", "Masonry and Brick", "Swimming Pools", \
	"Heating and Air Conditioning"].each do |os|
  Category.find_or_create_by_name(os)
end

[ "Jim Contractor", "Jose's Paint", "Mike's Windows", \
	"Big Tile and Stone", "Martin's Electrical", "Sean The Carpenter", "Michael's Kitchen and Bath", \
	"Theo's Roofing", "Santa's Plumbing", "DeSoto Concrete", "Mason Masonry", "Leo's Swimming Pools", \
	"Happy Heating and Air Conditioning"].each do |os|
  Business.find_or_create_by_name(os)
end