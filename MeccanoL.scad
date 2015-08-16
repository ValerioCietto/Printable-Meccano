MeccanoL([30,10,4],4);
module MeccanoL(size,hole){
   Meccano(size, hole);
   translate([size[0]/2,0,size[0]/2])
   rotate([0,90,0])
   Meccano(size, hole); 
}
