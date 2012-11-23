require 'rspec'
require '../lib/shp2wkt'

describe Shp2Wkt do

	before(:all) do

	end

	it "converts a shapefile with points into wkt" do
	    file = "/home/sagar/Downloads/kabul_shapefile/kabul_poi.shp"
		shp2wkt = Shp2Wkt.new(file)
		shp2wkt.write.should == 119
    end

	it "converts a shapefile with lines into wkt" do
		file = "/home/sagar/Downloads/kabul_shapefile/kabul_highway.shp"
		shp2wkt = Shp2Wkt.new(file)
		shp2wkt.write.should == 4955

    end

	it "converts a shapefile of polygons into wkt" do		
		file = "/home/sagar/Downloads/kabul_shapefile/kabul_natural.shp"
		shp2wkt = Shp2Wkt.new(file)
		shp2wkt.write.should == 7 	

    end
end