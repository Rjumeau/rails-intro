class PagesController < ApplicationController

  def about

  end

  def home

  end

  def contact
    @members = ["thanh", "dimitri", "germain", "damien", "julien", "julie"]
    # Si il y'a une recherche
    if params[:member]
      # Redéfinir la valeur de members filtrée par rapport à la recherche
      @members = @members.select {|member| member.downcase.start_with?(params[:member].downcase)}
    end
  end
end
