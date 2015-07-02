require "net/http"
require "uri"

# Getting source code for planes
uri_planes = URI.parse("http://wp.scn.ru/en/ww2/f")
response_planes = Net::HTTP.get(uri_planes)
#Net::HTTP.get_print(uri)
planes = response_planes.scan(/<a\shref=(?<url>[^>]*)>(?<name>[^<]*)<\/a>\s?\[\d+\]<br>/)
nations = []

#Array type of [<nation>, <count of planes>]
for i in planes
  uri_nations = URI.parse("http://wp.scn.ru" + i[0])
  response_nations = Net::HTTP.get(uri_nations)
  nations << response_nations.scan(/<img\sclass=img_bg[^.]*\.gif>\s<a\shref=[^>]*>(?<country>[^<]*)<\/a>\s?\[(?<count>\d)+\]/)
end

p nations

country = []
loop do
  i = 0
  max_count = '-1'
  begin
    get_nation = nations.shift
    get_nation.size
  rescue
    break
  end

  while i < get_nation.size
    if max_count < get_nation[i][1]
      country_tmp = get_nation[i][0]
      max_count = get_nation[i][1]
      country << [country_tmp]
    end
    i += 1
  end
end
p planes, country