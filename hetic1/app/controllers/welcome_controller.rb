class WelcomeController < ApplicationController
  def home
   @offers = Offer.where.not(published_at: nil).order(published_at: "DESC").limit(5)
  end

  def about
  end

  def help
  end
end
