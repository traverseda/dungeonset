size=60;
tiletrack=4;

difference() 
{
cube(size = [3,size,size], center = false);
	translate(v = [0,size/2, size/2]) for (n = [0 : 4])
	{
		// size/3 puts it ~1/3rd of the way between the middle and the edge
		rotate( n * 360 / 4, [1, 0, 0])
		translate(v = [0,size/3,size/2-9])sphere(r = 3);
		rotate( n * 360 / 4, [1, 0, 0])
		translate(v = [0,size/3,size/2-9])cylinder(h = 10, r=2);
	}
}

difference() 
{
	translate(v = [0,size/2, size/2]) for (n = [0 : 4])
	{
		// size/3 puts it ~1/3rd of the way between the middle and the edge
		rotate( n * 360 / 4, [1, 0, 0])
		translate(v = [0,size/3,size/-2-9])sphere(r = 3);
		rotate( n * 360 / 4, [1, 0, 0])
		translate(v = [0,size/3,size/-2-9])cylinder(h = 10, r=2);
	}
	translate(v = [-3,size/-2, size/-2])cube(size = [3,size*2,size*2], center = false);
}

translate(v = [3,0,0]) for (n = [1 : 2])
{
	translate(v = [0,size/n+tiletrack/2-size/2,+tiletrack/2])cube(size = [3,size/2-tiletrack,size/2-tiletrack], center = false);
	translate(v = [0,size/n+tiletrack/2-size/2,size/2+tiletrack/2])cube(size = [3,size/2-tiletrack,size/2-tiletrack], center = false);
}

