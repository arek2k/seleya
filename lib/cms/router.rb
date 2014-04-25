module Cms::Router

  @@route = nil
  @@args = nil

  def route!
    path = URI(request.original_url).path.split('/')
    if path.empty?
      @@route = '/'
      return
    end

    if path[2..-1].empty?
      @@route = path.second
      return
    end
  
    @@route, @@args = path.second, path[2..-1]
  end

  def valid?(page)
    return false if page.nil? || @@route != page.route
    true
  end

end
