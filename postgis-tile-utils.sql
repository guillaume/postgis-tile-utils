create or replace function tile_y (lat float, z integer)
    returns integer
    language plpgsql immutable as
$func$
declare
    n float;
    y_tile integer;
begin
    lat := radians(lat);
    n := power(2, z);
    y_tile := floor((1.0 - asinh(tan(lat)) / pi()) / 2.0 * n);
    return y_tile;
end;
$func$;

create or replace function tile_x (lng float, z integer)
    returns integer
    language plpgsql immutable as
$func$
declare
    n float;
    x_tile integer;
begin
    n := power(2, z);
    x_tile := floor((lng + 180.0) / 360.0 * n);
    return x_tile;
end;
$func$;
