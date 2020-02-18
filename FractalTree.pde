private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
int count=1;
int sizet=1;
float random=(float)Math.random();
public void setup() 
{   
	size(640,480);     
} 
public void draw() 
{   
	background(172, 231, 232);   
	stroke(176, 127, 77);   
	for(int i=120;i<521;i+=100)
		line(i,480,i,380);    
	line(380,480,380,380);  
	drawBranches(320,380,sizet,3*PI/2); 
	drawBranches(120,380,sizet+12,3*PI/2); 
	drawBranches(520,380,sizet+18,3*PI/2); 
	drawBranches(420,380,sizet+45,3*PI/2); 
	drawBranches(220,380,sizet+41,3*PI/2); 
	drawBranches(380,380,sizet+10,3*PI/2); 
	if(sizet<50)
		sizet+=1; 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	fill(100, 189, 23);
	count++;
branchLength*=.8;
double ang1 = (angle + branchAngle);
double ang2= (angle -branchAngle);
stroke(176, 127, 77);   
line(x,y,(int)(x+Math.cos(ang1)*branchLength),(int)(y+Math.sin(ang1)*branchLength));
pushMatrix();
noStroke();
translate((int)(x+Math.cos(ang1)*branchLength),(int)(y+Math.sin(ang1)*branchLength));
rotate((float)(random*ang1));
ellipse(0,0,10,5);
popMatrix();
pushMatrix();
noStroke();
translate((int)(x+Math.cos(ang1)*branchLength),(int)(y+Math.sin(ang1)*branchLength));
rotate((float)(random*ang2));
ellipse(0,0,10,5);
popMatrix();
stroke(176, 127, 77);   
line(x,y,(int)(x+Math.cos(ang2)*branchLength),(int)(y+Math.sin(ang2)*branchLength));
if(branchLength>smallestBranch){
	drawBranches((int)(x+Math.cos(ang1)*branchLength),(int)(y+Math.sin(ang1)*branchLength),branchLength,ang1);
	drawBranches((int)(x+Math.cos(ang2)*branchLength),(int)(y+Math.sin(ang2)*branchLength),branchLength,ang2);
}
} 
