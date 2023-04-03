class PagesController < ApplicationController



  #typisk navngivning for en controller som denne, der bare tilbyder views uden data
  # er main_controller, ikke pages_controller
  def home
    render 'home'
  end


  def about
    #aboutpage
    # default opførsel med en tom metode er
    # render("about")
    # dvs. den peger på et view af samme navn som metoden
  end

end
