include<lib/libtriangles.scad>;

size=60;
tiletrack=4;

tabwidth=10;
tabheight=5;
tablength=20;

rotate(a=[0,-90,0]) {//stupid crap becouse I built it facing a stupid direction. Remove for actually working on it.

difference() 
{
cube(size = [5,size,size], center = false);
	translate(v = [0,size/2, size/2]) for (n = [0 : 4])
	{
		// size/3 puts it ~1/3rd of the way between the middle and the edge
		rotate( n * 360 / 4, [1, 0, 0])
		translate(v = [0,size/3,size/2+1])tabhole();
	}
}


translate(v = [0,size/2, size/2]) for (n = [0 : 4])
{
	// size/3 puts it ~1/3rd of the way between the middle and the edge
	rotate( n * 360 / 4, [1, 0, 0])
	translate(v = [0,size/3,size/-2+1])tab();

}


translate(v = [5,0,0]) for (n = [1 : 2])//the actual tiles, the 4 cubes on top. Should probably just code them individually instead of relying on stupid overcomplicated loops.
{
	translate(v = [0,size/n+tiletrack/2-size/2,+tiletrack/2])cube(size = [3,size/2-tiletrack,size/2-tiletrack], center = false);
	translate(v = [0,size/n+tiletrack/2-size/2,size/2+tiletrack/2])cube(size = [3,size/2-tiletrack,size/2-tiletrack], center = false);
}

}//ends stupid crap

module tab(){
	rotate([90, 180, 90])difference()
	{
		hull()
		{
			translate(v = [2,0,0])eqlprism(tabwidth-4,1,tabheight);
			translate(v = [0,tablength-5,0])eqlprism(tabwidth,1,tabheight);
			translate(v = [tabwidth/2.5,tablength,0])eqlprism(1,1,1);
		}
		translate(v = [tabwidth/2-1,-1,-1])cube(size = [2,tablength+5,tabheight+5]);
	}
}
module tabhole(){
	rotate([90, 180, 90])hull()
		{
			translate(v = [2,0,0])eqlprism(tabwidth-4,1,tabheight);
			translate(v = [0,tablength-5,0])eqlprism(tabwidth,1,tabheight);
			translate(v = [tabwidth/2.5,tablength,0])eqlprism(1,1,1);
		}
}
