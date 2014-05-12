module Cms::Router

  @@route = nil
  @@args = nil

  def route!
    path = URI(request.original_url).path.split('/')

    case 
    when path.empty? then @@route = '/'
    when path[2..-1].empty? then @@route = path.second
    else @@route, @@args = path.second, path[2..-1]
    end
  end

  def valid?(page)
    return false if page.nil? || @@route != page.route || !page.enabled
    true
  end

end
