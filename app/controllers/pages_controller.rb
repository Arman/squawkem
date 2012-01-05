class PagesController < ApplicationController
  def contact
    @subtitle = "Contact"
  end
  
  def about
    @subtitle = "About"
  end
  
  def help
    @subtitle = "Help"
  end

end
