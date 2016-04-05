select MDSYS.SDO_AGGR_CONVEXHULL(sdoaggrtype(POINTS,0.5))
from PLACES;


select placename,points,mdsys.sdo_nn_distance(1) dist
from places
where sdo_nn(points,
 sdo_geometry(
    2001, --2 in decates two- demansional, 1 indicates a single point
    8307,  
    sdo_point_type(-118.27187370000001,34.0291765,null),--lorenzo the apartment
    null,
    null
  ),
  'sdo_num_res=4',1) = 'TRUE' -- I added my apartment into the table, so except it the nearest results should be four
  order by dist;


