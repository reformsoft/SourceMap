module HomeHelper
  
  
  def location_summary
    email_tag = @service.tags.detect { |t| t.name == "Email" }
    website_tag = @service.tags.detect { |t| t.name == "Website" }
    
    arr = Array.new

    if email_tag && email_tag.value
      arr << email_tag
    end
    
    if website_tag && website_tag.value
      arr << website_tag
    end

    final_string = "<span class=\"service_stub\">"
    for i in 0..arr.count
      if arr[i]
        final_string += arr[i].value

        if i < arr.count - 1
          final_string += " | "
        end
      end
    end
    final_string += "</span>"
    return final_string
  end
  
end
