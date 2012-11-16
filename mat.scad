rotate( 90, [0, -1, 0]){
difference() 
{
cube(size = [3,30,30], center = false);
	translate(v = [0,15, 15]) for (n = [0 : 4])
	{
		rotate( n * 360 / 4, [1, 0, 0])
		translate(v = [0,8,5])sphere(r = 3);
		rotate( n * 360 / 4, [1, 0, 0])
		translate(v = [0,8,6])cylinder(h = 10, r=2);
	}
}


translate(v = [3,0,0])
{
	rotate( n * 360 / 4, [1, 0, 0])
		for ( i = [0 : 1] )
			translate(v = [0,2+i*15,16])cube(size = [1,12,12]);

	rotate( n * 360 / 4, [1, 0, 0])
		for ( i = [0 : 1] )
			translate(v = [0,i*15+2,2])cube(size = [1,12,12]);
}
translate(v = [0,15, 15]) for (n = [0 : 4])
{
	difference() 
	{
		union()
		{
		rotate( n * 360 / 4, [1, 0, 0])
		translate(v = [0,-8,16+7])sphere(r = 3);
		rotate( n * 360 / 4, [1, 0, 0])
		translate(v = [0,-8,8+6])cylinder(h = 10, r=2);
		}
	translate(v = [-3,-30, -30])cube(size = [3,60,60], center = false);
	rotate( n * 360 / 4, [1, 0, 0])
	translate(v = [0,-8,8+6])
	{
		translate(v = [-1,0,7])rotate( 90, [0, 1, 0])cylinder(h = 10, r=.5);
		translate(v = [-1,-.5,7])cube(size = [10,1,12]);
	}
	}
}
}