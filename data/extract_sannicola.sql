Copy (select st_x(st_transform(way,4326)) as X,st_y(st_transform(way,4326)) as Y, name from planet_osm_point where name like '%S%Nikolaus%')  To '1.csv' With CSV;
Copy (select st_x(st_transform(way,4326)) as X,st_y(st_transform(way,4326)) as Y, name from planet_osm_point where name like '%Ά%Νικόλαος%')  To '2.csv' With CSV;
Copy (select st_x(st_transform(way,4326)) as X,st_y(st_transform(way,4326)) as Y, name from planet_osm_point where name like '%S%Nicola%') To '3.csv' With CSV;
Copy (SELECT st_x(st_transform(st_centroid(way),4326)) as X,st_y(st_transform(st_centroid(way),4326)) as Y,name  from planet_osm_polygon  where name like '%S%Nicola%') to '4.csv' with CSV;
Copy (SELECT st_x(st_transform(st_centroid(way),4326)) as X,st_y(st_transform(st_centroid(way),4326)) as Y,name  from planet_osm_polygon  where name like '%S%Nikolaus%') to '5.csv' with CSV;
Copy (SELECT st_x(st_transform(st_centroid(way),4326)) as X,st_y(st_transform(st_centroid(way),4326)) as Y,name  from planet_osm_polygon  where name like '%S%Νικόλαος%') to '6.csv' with CSV;
Copy (SELECT st_x(st_transform(ST_PointOnSurface(way),4326)) as X,st_y(st_transform(ST_PointOnSurface(way),4326)) as Y,name  from planet_osm_line  where name like '%S%Nicola%') to '7.csv' with CSV;
Copy (SELECT st_x(st_transform(ST_PointOnSurface(way),4326)) as X,st_y(st_transform(ST_PointOnSurface(way),4326)) as Y,name  from planet_osm_line  where name like '%S%Nikolaus%') to '8.csv' with CSV;
Copy (SELECT st_x(st_transform(ST_PointOnSurface(way),4326)) as X,st_y(st_transform(ST_PointOnSurface(way),4326)) as Y,name  from planet_osm_line  where name like '%S%Νικόλαος%') to '9.csv' with CSV;
