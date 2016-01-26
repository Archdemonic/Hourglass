/* draw_circle_part(x,y,r,ang,off,outline) */
var X,Y,r,ang,off,outline,i;
i=0;
X=argument0; //x position
Y=argument1; //y position
r=argument2; // radius
ang=argument3; // angle of the circle drawn
off=argument4; // offset angle to draw the part
outline=argument5; // whether to only draw an outline T/F 
if!(outline){
	draw_primitive_begin(pr_trianglefan);
	draw_vertex_color(X,Y,col1,1);
} else
	draw_primitive_begin(pr_linestrip);
draw_vertex(X+lengthdir_x(r,off),Y+lengthdir_y(r,off));
repeat(abs(ang)mod 360){
	draw_vertex(X+lengthdir_x(r,i+off),Y+lengthdir_y(r,i+off));
	i+=1*sign(ang);
}
draw_primitive_end();


//draw_circle_part_color
/* draw_circle_part_color(x,y,r,ang,off,col1,col2,outline) */
var X,Y,r,ang,off,col1,col2,outline,i;
i=0;
X=argument0; //x position
Y=argument1; //y position
r=argument2; // radius
ang=argument3; // angle of the circle drawn
off=argument4; // offset angle to draw the part
col1=argument5; // color in the center
col2=argument6; // color in the outline
outline=argument7; // whether to only draw an outline T/F 
if!(outline){
	draw_primitive_begin(pr_trianglefan);
	draw_vertex_color(X,Y,col1,1);
} else
	draw_primitive_begin(pr_linestrip);
draw_vertex_color(X+lengthdir_x(r,off),Y+lengthdir_y(r,off),col2,1);
repeat(abs(ang)mod 360){
	draw_vertex_color(X+lengthdir_x(r,i+off),Y+lengthdir_y(r,i+off),col2,1);
	i+=1*sign(ang);
}
draw_primitive_end();
//draw_ellipse_part


/* draw_ellipse_part(x1,y1,x2,y2,ang,off,outline) */
var X1,Y1,X2,Y2,r1,r2,ang,off,outline,i;
i=0;
X1=min(argument0,argument2); // start x position
Y1=min(argument1,argument3); // start y position
X2=max(argument0,argument2); // end x position
Y2=max(argument1,argument3); // end y posiition
ang=argument4; // angle of the circle drawn
off=argument5; // offset angle to draw the part
outline=argument6; // whether to only draw an outline T/F
rx=point_distance(X1,0,X2,0)/2;
ry=point_distance(0,Y1,0,Y2)/2;
if!(outline){
	draw_primitive_begin(pr_trianglefan);
	draw_vertex_color(X1+rx,Y1+ry,col1,1);
} else
	draw_primitive_begin(pr_linestrip);
draw_vertex(X1+rx+lengthdir_x(rx,off),Y1+ry+lengthdir_y(ry,off));
repeat(abs(ang)mod 360){
	draw_vertex(X1+rx+lengthdir_x(rx,i+off),Y1+ry+lengthdir_y(ry,i+off));
	i+=1*sign(ang);
}
draw_primitive_end();


//draw_ellipse_part_color
/* draw_ellipse_part_color(x1,y1,x2,y2,ang,off,col1,col2,outline) */
var X1,Y1,X2,Y2,r1,r2,ang,off,col1,col2,outline,i;
i=0;
X1=min(argument0,argument2); // start x position
Y1=min(argument1,argument3); // start y position
X2=max(argument0,argument2); // end x position
Y2=max(argument1,argument3); // end y posiition
ang=argument4; // angle of the circle drawn
off=argument5; // offset angle to draw the part
col1=argument6; // color in the center
col2=argument7; // color in the outline
outline=argument8; // whether to only draw an outline T/F
rx=point_distance(X1,0,X2,0)/2;
ry=point_distance(0,Y1,0,Y2)/2;
if!(outline){
	draw_primitive_begin(pr_trianglefan);
	draw_vertex_color(X1+rx,Y1+ry,col1,1);
} else
	draw_primitive_begin(pr_linestrip);
draw_vertex_color(X1+rx+lengthdir_x(rx,off),Y1+ry+lengthdir_y(ry,off),col2,1);
repeat(abs(ang)mod 360){
	draw_vertex_color(X1+rx+lengthdir_x(rx,i+off),Y1+ry+lengthdir_y(ry,i+off),col2,1);
	i+=1*sign(ang);
}
draw_primitive_end();
