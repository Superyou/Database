create table places(
  placename VARCHAR2(100) primary key,
  points SDO_GEOMETRY
);


insert into places values(
  'Lorenzo',--point 1
  sdo_geometry(
    2001, --2 in decates two- demansional, 1 indicates a single point
    8307,  --longitude and latitude
    sdo_point_type(-118.27187370000001,34.0291765,null),
    null,
    null
  )
);
insert into places values(
  'Ralphs',--point2
  sdo_geometry(
    2001, --2 in decates two- demansional, 1 indicates a single point
    8307 ,
    sdo_point_type(-118.2910701778412,34.03187418077439,null),
    null,
    null
  )
);
insert into places values(
  'Uytengsn Aquatics Center',--point3
  sdo_geometry(
    2001, --2 in decates two- demansional, 1 indicates a single point
    8307 ,
    sdo_point_type(-118.28824460506439,34.02388944530201,null),
    null,
    null
  )
);
insert into places values(
  'Leavey Library',--point4
  sdo_geometry(
    2001, --2 in decates two- demansional, 1 indicates a single point
    8307 ,
    sdo_point_type(-118.28281179070473,34.02175975920757,null),
    null,
    null
  )
);
insert into places values(
  'USC Bookstore',--point5
  sdo_geometry(
    2001, --2 in decates two- demansional, 1 indicates a single point
    8307 ,
    sdo_point_type(-118.28648675233126,34.02072435232496,null),
    null,
    null
  )
);
insert into places values(
  'LA Memoral Coliseum',--point6
  sdo_geometry(
    2001, --2 in decates two- demansional, 1 indicates a single point
    8307 ,
    sdo_point_type(-118.28774034976959,34.01401863376962,null),
    null,
    null
  )
);

insert into places values(
  'Staples Center',--point7
  sdo_geometry(
    2001, --2 in decates two- demansional, 1 indicates a single point
    8307 ,
    sdo_point_type(-118.26719462871552,34.04290752837424,null),
    null,
    null
  )
);
insert into places values(
  'the Grove shopping mall',--point8
  sdo_geometry(
    2001, --2 in decates two- demansional, 1 indicates a single point
    8307 ,
    sdo_point_type(-118.3584326505661,34.07223093863892,null),
    null,
    null
  )
);
insert into places values(
  'Santa Monica Pier',--point9
  sdo_geometry(
    2001, --2 in decates two- demansional, 1 indicates a single point
    8307 ,
    sdo_point_type(-118.49673874676228,34.0094596654644,null),
    null,
    null
  )
);
insert into places values(
  'Japanese American National Museum',--point10
  sdo_geometry(
    2001, --2 in decates two- demansional, 1 indicates a single point
    8307 ,
    sdo_point_type(-118.23868542909622,34.04938372826886,null),
    null,
    null
  )
);

--intert user_sdo_geom_metadata
INSERT into user_sdo_geom_metadata
values (
'places',
'points',
MDSYS.SDO_DIM_ARRAY(   -- 20X20 grid
    MDSYS.SDO_DIM_ELEMENT('Longitude', -180, 180, 0.005),
    MDSYS.SDO_DIM_ELEMENT('Latitude', -90, 90, 0.005)
    ),
8307   -- SRID
);
commit;

create index places_spatial_idx
on places(points)
indextype is mdsys.spatial_index;

commit;