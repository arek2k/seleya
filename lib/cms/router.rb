module Cms::Router

  def get_route
    path = URI(request.original_url).path.split('/')
    return '/', nil if path.empty?
    return path.second, nil if path[2..-1].empty?
    return path.second, path[2..-1]
  end

end
