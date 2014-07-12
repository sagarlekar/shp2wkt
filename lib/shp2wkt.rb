# Author - Sagar Arlekar
# Email - sagar.arlekar@gmail.com

require 'rgeo'
require 'rgeo/shapefile'
require 'rgeo/geos'


module Shp2Wkt
# * This class will convert a shapefile to WKT
  class Shp2Wkt

    attr_accessor :filename
    #
    # * +filename+ - The path to the shape file. E.g. /home/user/bangalore_roads.shp. The name is stored in @filename

    def initialize(filename)
      # absolute path to the shapefile e.g. /home/user/roads.shp
      @filename = filename
      read
    end

    # Will read the shapefile in @filename and convert each geometry in text_geom array as text.
    def read
      @text_geom = []

      RGeo::Shapefile::Reader.open(@filename) do |file|

        file.each do |record|
          @text_geom << record.geometry.as_text
        end
      end
      @text_geom
    end

    # Will write the geometries in text_geom to a file. One geom per line.
    def write

      outfile_filename = @filename.gsub(".shp", ".txt")

      begin
        File.open(outfile_filename, 'w') do |op|
          @text_geom.each do |geom|
            op.puts "#{geom}"
          end
        end
        @text_geom.length
      rescue
        raise Exception
      end
    end

  end
end