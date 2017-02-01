public void setup()
{
	size(400,400);
	rectMode(CENTER);
}
public void draw()
{
	sierpinski(200,200,320);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	int r = (int)(Math.random()*256);
		int g = (int)(Math.random()*256);
		int b = (int)(Math.random()*256);
	if(len==10)
	{
		fill(r,100);
		rect(x,y,10,10);
		fill(255,10);
		ellipse(x,y,50,50);
	}
	else 
	{
		fill(r,g,b);
		tint(255,100);
		rect(x,y,len/2,len/2);
		fill(100,150);
		ellipse(x,y,len/4,len/4);
		sierpinski(x+len/2,y+len/2,len/2);
		sierpinski(x-len/2,y-len/2,len/2);
		sierpinski(x-len/2,y+len/2,len/2);
		sierpinski(x+len/2,y-len/2,len/2);
	}
}