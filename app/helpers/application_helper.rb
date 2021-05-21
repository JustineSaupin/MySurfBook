module ApplicationHelper
  def tide(surf_session_tide)
    case surf_session_tide
    when "high-tide"
      image_tag 'high-tide.svg', width: 50, height: 50
    when "mid-tide"
      image_tag 'mid-tide.svg', width: 50, height: 50
    when "low-tide"
      image_tag "low-tide.svg", width: 50, height: 50
    end
  end

  def spot_type(surf_session_spot_type)
    case surf_session_spot_type
    when "reef"
      image_tag 'reef.svg', width: 50, height: 50
    when "beach"
      image_tag 'beach.svg', width: 50, height: 50
    end
  end
end
