module ApplicationHelper

	def app
    "SQUAWK'EM"
  end
  
  def logo
    image_tag("squawk_60_40.gif", :alt => app)
  end
  
  # Return a title on a per-page basis.
  def title
    base_title = app
    if @subtitle.nil?
      base_title
    else
      "#{base_title} | #{@subtitle}"
    end
  end
  
end
