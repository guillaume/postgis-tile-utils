# PostGIS Tile Utils

Postgresql functions to infer tiles from lat,lng,zoom.

[![tiles be like](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Tiled_web_map_numbering.png/320px-Tiled_web_map_numbering.png)](https://wiki.openstreetmap.org/wiki/File:Tiled_web_map_numbering.png)

## Installation

```
psql -U <username> -d <dbname> -f postgis-tile-utils.sql
```

## Usage

```
postgres=# select tile_x(-74.0059, 10) as x, tile_y(40.7127, 10) as y, 10 as z;
  x  |  y  | z
-----+-----+----
 301 | 385 | 10
(1 row)
```
