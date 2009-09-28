price_range = {
  '4ji'   =>  'any-500-price-range',
  '4jk'   =>  '500-700-price-range',
  '4jl'   =>  '700-900-price-range',
  '4jm'   =>  '900-1100-price-range',
  '4jn'   =>  '1100-1300-price-range',
  '4jo'   =>  '1300-1500-price-range',
  '4jp'   =>  '1500-2000-price-range',
  '4jq'   =>  '2000-2500-price-range',
  '4jr'   =>  '2500-3000-price-range',
}

bedrooms = {
  '1z141wj'   =>  '0-beds',
  '1z141xt'   =>  '1-beds',
  '1z141y8'   =>  '2-beds',
  '1z141xs'   =>  '3-beds',
  '1z141to'   =>  '4-beds',
  '1z141la'   =>  '5-beds',
}

baths = {
  '1z141xu'   =>  '1-baths',
  '1z141y7'   =>  '2-baths',
  '1z141x2'   =>  '3-baths',
}

# price_range = {
#   'a' => ''
# }
# bedrooms = {
#   'b'   =>  '',
# }
# 
# baths = {
#   'c'   =>  '',
# }
@count = 0

def print_me(line)
  puts "#{@count}: #{line}"
  @count += 1
end


urls = Array.new

price_range.sort.each do |price_code, price_seo_name|
  print_me "/#{price_seo_name}-#{price_code}"
  bedrooms.sort.each do |bedroom_code, bedroom_seo_name|
    print_me "/#{bedroom_seo_name}-#{bedroom_code}"
    print_me "/#{price_seo_name}-#{bedroom_seo_name}-#{price_code}+#{bedroom_code}"
    baths.sort.each do |bath_code, bath_seo_name|
      print_me "/#{bath_seo_name}-#{bath_code}"
      print_me "/#{bedroom_seo_name}-#{bath_seo_name}-#{bedroom_code}+#{bath_code}"
      print_me "/#{price_seo_name}-#{bath_seo_name}-#{price_code}+#{bath_code}"
      print_me "/#{price_seo_name}-#{bedroom_seo_name}-#{bath_seo_name}-#{price_code}+#{bedroom_code}+#{bath_code}"
    end
  end
end