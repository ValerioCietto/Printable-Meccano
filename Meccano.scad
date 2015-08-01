module Meccano(size,hole){
    difference(){
        cube(size, center=true);
        cylinder(h=10,r=hole/2, center=true, $fn=50);
        for(j= [-size[0]:10:size[0]])
        for(i= [-size[1]:10:size[1]]){
        translate([j,i,0])
        cylinder(h=size[2]+1,r=hole/2, center=true, $fn=50);
        }    
        
    }    
}

module MeccanoL(size,hole){
   Meccano(size, hole);
   translate([size[0]/2,0,size[0]/2])
   rotate([0,90,0])
   Meccano(size, hole); 
}
module MeccanoY(size,hole){
   Meccano(size, hole);
   translate([(size[0]/2)*sin(45)+size[0]/2,0,size[0]/2*cos(45)])
   rotate([0,135,0])
   Meccano(size, hole); 
}

module Meccano30(size,hole){
   Meccano(size, hole);
   translate([(size[0]/2)*sin(30)+size[0]/2,0,size[0]/2*cos(30)])
   rotate([0,120,0])
   Meccano(size, hole); 
}

module MeccanoAngle(size,hole,angle){
   Meccano(size, hole);
   translate([(size[0]/2)*sin(angle)+size[0]/2,0,size[0]/2*cos(angle)])
   rotate([0,90+angle,0])
   Meccano(size, hole); 
}
module MeccanoC(size,hole){
   Meccano(size, hole);
   translate([(size[0]/2)*sin(45)+size[0]/2,0,size[0]/2*cos(45)])
   rotate([0,135,0])
   Meccano(size, hole); 
   translate([(size[0]/2)*-sin(45)-size[0]/2,0,size[0]/2*cos(45)])
   rotate([0,45,0])
   Meccano(size, hole); 
}

module Shield(){
    $fn=10;
    difference(){
  hull(){
      resize([70,20,10])
    sphere(10);
     
    
  } 
  translate([0,0,-500])
  cube([1000,1000,1000], center=true);
  }
  
} 
module PingAttachment(){
  difference(){
    union(){  
        cube([48,22,10],center=true);
        translate([-30,9.5,0])
        cube([20,3,10], center=true);
        translate([30,9.5,0])
        cube([20,3,10], center=true);
    }    
    translate([-13,0,0])  
    cylinder(h=20, r=8.5, center=true);
      translate([13,0,0])  
    cylinder(h=20, r=8.5, center=true);
    rotate([90,0,0])
    translate([30,0,-10])  
    cylinder(h=20, r=1.5, center=true, $fn=50);
    rotate([90,0,0])
    translate([35,0,-10])  
    cylinder(h=20, r=1.5, center=true, $fn=50);
    
    rotate([90,0,0])
    translate([-30,0,-10])  
    cylinder(h=20, r=1.5, center=true, $fn=50);
    rotate([90,0,0])
    translate([-35,0,-10])  
    cylinder(h=20, r=1.5, center=true, $fn=50);
  }  
}
module BatteryPackHolder(){
    difference(){
        cube([47,91,29], center=true);
        translate([0,0,4])
        cube([44,88,29], center=true);
        translate([0,0,4])
        cube([34,98,29], center=true);
        for(x = [-50:5:50]){
        for(y = [-40:10:40]){
        rotate([0,0,0])
        translate([x,y,0])  
        cylinder(h=200, r=1.5, center=true, $fn=50);
        }
        }
        
        for(x = [-20:40:20]){
        for(y = [-5:5:10]){
        rotate([90,0,0])
        translate([x,y,0])  
        cylinder(h=200, r=1.5, center=true, $fn=50);
        }
        }
        
        for(x = [-40:10:40]){
        for(y = [-5:5:10]){
        rotate([90,0,90])
        translate([x,y,0])  
        cylinder(h=50, r=1.5, center=true, $fn=50);
        }
        }
    }
       
    
}
//PingAttachment();
BatteryPackHolder();
