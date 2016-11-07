class InfoPagesController < ApplicationController
  def home
    @store = Store.all
    gon.rabl
  end

  def privacy
  end

  def terms
  end

end
