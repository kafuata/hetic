module OffersHelper

  def nice_published_at(date)
    if (date != nil)
      return date.strftime('%e %B %Y')
    else
      return "---"
    end
    
  end

end
