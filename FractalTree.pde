private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
int count=1;
int sizet=1;
public void setup() 
{   
	size(640,480);     
} 
public void draw() 
{   
	background(0);   
	stroke(176, 127, 77);   
	line(320,480,320,380);   
	line(120,480,120,380);
	line(520,480,520,380);  
	drawBranches(320,380,sizet,3*PI/2); 
	drawBranches(120,380,sizet,3*PI/2); 
	drawBranches(520,380,sizet,3*PI/2); 
	if(sizet<50)
		sizet+=1; 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	count++;
branchLength*=.8;
double ang1 = (angle + branchAngle);
double ang2= (angle -branchAngle);
line(x,y,(int)(x+Math.cos(ang1)*branchLength),(int)(y+Math.sin(ang1)*branchLength));
line(x,y,(int)(x+Math.cos(ang2)*branchLength),(int)(y+Math.sin(ang2)*branchLength));
if(branchLength>smallestBranch){
	drawBranches((int)(x+Math.cos(ang1)*branchLength),(int)(y+Math.sin(ang1)*branchLength),branchLength,ang1);
	drawBranches((int)(x+Math.cos(ang2)*branchLength),(int)(y+Math.sin(ang2)*branchLength),branchLength,ang2);
}
} 
