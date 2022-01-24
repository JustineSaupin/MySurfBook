module ApplicationHelper
  include Pagy::Frontend

  def tide(surf_session_tide)
    case surf_session_tide
    when "high-tide"
      image_tag 'high-tide.png', width: 35
    when "mid-tide"
      image_tag 'mid-tide.png', width: 35
    when "low-tide"
      image_tag "low-tide.png", width: 35
    end
  end

  def spot_type(surf_session_spot_type)
    case surf_session_spot_type
    when "reef"
      image_tag 'reef.png', width: 35
    when "beach"
      image_tag 'beach.png', width: 35
    end
  end
end
