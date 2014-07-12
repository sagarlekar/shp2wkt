require 'rspec'
require 'shp2wkt'

puts "NOTE: Test should be run from project home directory"

describe Shp2Wkt do

  before(:all) do

    @file_points = "./test/data/kabul_points/aims_kabul_city_government_buildings_shapefiles_afghanistan_2004.shp"
    @file_lines = "./test/data/colorado_rivers/colorado_rivers.shp"
    @file_polygons = "./test/data/usa_states/usa_states.shp"
  end

  it "converts a shapefile with points into wkt" do
    shp2wkt = Shp2Wkt::Shp2Wkt.new(@file_points)
    shp2wkt.write.should == 41
  end

  it "converts a shapefile with lines into wkt" do
    shp2wkt = Shp2Wkt::Shp2Wkt.new(@file_lines)
    shp2wkt.write.should == 99
  end

  it "converts a shapefile of polygons into wkt" do
    shp2wkt = Shp2Wkt::Shp2Wkt.new(@file_polygons)
    shp2wkt.write.should == 51
  end
end