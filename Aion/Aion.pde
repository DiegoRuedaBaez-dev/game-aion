//Aión
//Autores: 2200515-Daniel Jeshua Morelos Villamizar y 
//Descripción:
PImage acarta;
PImage ccarta;
boolean press;
int vidae=100,vidap=100;
int xc1=200,xc2=400,xbe=500,xbp=100,ybe=50,ybp=300;
Carta atk,heal;
Barra venemigo,vprota;
void setup()
{
  size(800,600);
  acarta=loadImage("KOSMOS.jpg");
  ccarta=loadImage("RELOJ.jpg");
  acarta.resize(200,300);
  ccarta.resize(200,300);
  atk=new Carta(xc1,300,xc1+200,500);
  heal=new Carta(xc2,300,xc2+200,500);
  venemigo=new Barra(xbe,ybe,vidae,20);
  vprota=new Barra(xbp,ybp,vidap,20);
}
void draw()
{
  background(100);
  image(acarta,xc1,300);
  image(ccarta,xc2,300);
  atk.mousePressed(); 
  atk.accion();
  heal.mousePressed();
  heal.curar();
  vprota.display();
  venemigo.display();
  text(vidae,500,50);
  text(vidap,50,500);
}
