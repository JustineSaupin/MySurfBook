module ApplicationHelper
  def tide(surf_session_tide)
    case surf_session_tide
    when "high-tide"
      image_tag 'high-tide.svg'
    when "mid-tide"
      image_tag 'mid-tide.svg'
    when "low-tide"
      image_tag "low-tide.svg"
    end
  end

  def spot_type(surf_session_spot_type)
    case surf_session_spot_type
    when "reef"
      image_tag 'reef.svg'
    when "beach"
      image_tag 'beach.svg'
    end
  end
end
