void setup(){
  size(500,500);
  Bresenham line1=new Bresenham(7,8,20,20,10,30,152,46);
}

class Bresenham{
  float xi,yi,xf,yf,Pk,Dx,Dy,D2Y,z,x,y;
  Bresenham(float xi,float yi,float xf,float yf ,int grosor,float Red,float Green,float Blue){
      Dx=(xf-xi);
      Dy=(yf-yi);
      x=xi;
      y=yi;
      Pk=2.0*Dy-Dx;
      D2Y=2.0*(yf-yi);
      z=2.0*Dy-2.0*Dx;
      for(float i=0;i<=Dx;i++){
      if(Pk<=0){
       Pk=Pk+D2Y;
       x=x+1;
      }
      if(Pk>0){
        Pk=Pk+z;
        y++;
        x++;
      }
      for(int j=-grosor/2;j<grosor/2;j++){
      stroke(Red,Green,Blue);
      point(x+j,height-y);
      
      }
      }
     
  }
  void crear(){
      
      }
  
}

void draw(){
  
}
