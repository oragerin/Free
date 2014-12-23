bool TForm1::Freedom (int x, int y, int f[10][10])
{
 int d[8][2]={{0,1},{1,0},{0,-1},{-1,0},{1,1},{-1,1},{1,-1},{-1,-1}};
 int dx;
 int dy;
 int fl;
 if ((x>0)&&(x<11)&&(y>0)&&(y<11)&&(f[x,y]==0))
  {
   for(int i=0; i<8; i++)
   {
    dx=x+d[i][0];
    dy=y+d[i][1];
    if ((dx>0)&&(dx<11)&&(dy>0)&&(dy<11)&&(f[dx,dy]>0))
     {fl=false;
      break;
     }
   }
    fl= True;
  }else {fl=false;}
  return fl;
}
