[ "General Contractors", "Paint & Interior Finishes", "Windows, Doors and Siding", \
	"Landscape Design", "Tile and Stone", "Electrical", "Carpenters", "Kitchen and Bath", \
	"Roofing", "Plumbing", "Concrete", "Masonry and Brick", "Swimming Pools", \
	"Heating and Air Conditioning"].each do |os|
  Category.find_or_create_by_name(os)
end

