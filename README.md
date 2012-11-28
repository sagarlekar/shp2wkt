shp2wkt
=======

A utility to convert Shapefile to Text (Well Known Text). Shp2wkt can be used as a command line tool and also as a ruby class.

### Usage as a command line itility
```
shp2wkt FILENAME
```
Example
```
shp2wkt /home/gis/india_rivers.shp
```

### Usage as a ruby class
```
include 'shp2wkt'

shp2wkt = Shp2Wkt.new('/home/gis/india_rivers.shp')
shp2wkt.write
```

