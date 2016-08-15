# gr2ogr -f GeoJSON -o a.geojson --config SHAPE_ENCODING Shift_JIS 88崖等_3.shp 
require 'find'
Find.find('../jare25000/') {|path|
  next unless path.end_with?('shp')
  /BL_(.*?)\/(\d*)/.match path
  print "ogr2ogr -f GeoJSON --config SHAPE_ENCODING Shift_JIS #{$1}_#{$2}.geojson #{path}\n"
}
