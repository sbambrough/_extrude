// examples
/*
my_points = [[1, 2], [5, 2], [3, 8]];
my_extrude = 3;

color("yellow") xy_extrude(my_points, my_extrude, false);
color("red") xz_extrude(my_points, my_extrude, false);
color("blue") yz_extrude(my_points, my_extrude, false);
*/

module xy_extrude(points, height, center = true){
    if(center == true) 
        translate ([0, 0, height/-2])  
                linear_extrude(height) 
                    polygon(points = points);
   else
        linear_extrude(height) 
            polygon(points = points);
};

module xz_extrude(points, height, center = true){
    if(center == true) 
        translate ([0, height/2, 0])        
            rotate([90, 0, 0])
                linear_extrude(height) 
                    polygon(points = points);
   else
       translate ([0, height, 0])    
           rotate([90, 0, 0])
               linear_extrude(height) 
                   polygon(points = points);
};

module yz_extrude(points, height, center = true){
    if(center == true) 
        translate ([height/-2, 0, 0])        
            rotate([90, 0, 90])
                linear_extrude(height) 
                    polygon(points = points);
   else
        rotate([90, 0, 90])
            linear_extrude(height) 
                polygon(points = points);
};