//Aión
//Autores: 2200515-Daniel Jeshua Morelos Villamizar y 
//Descripción:
PImage acarta;
PImage ccarta;
PImage stcarta;
PFont letra;
boolean press;
int vidae=100,vidap=50;
int xc1=200,xc2=400,xc3=600,ycs=450,xbe=750,xbp=100,ybe=50,ybp=400;
int dano1=10,cura1=10;
int larcar=250,anccar=175;

Carta atk,heal,tiamat;
Barra venemigo,vprota;
Enemigo ero;
void setup()
{
  size(1000,700);
  acarta=loadImage("ESPADA DEL TIEMPO.jpg");
  ccarta=loadImage("RELOJ.jpg");
  stcarta=loadImage("SOUL TIAMAT.jpg");
  letra= createFont("Norse.otf",15);
  acarta.resize(anccar,larcar);
  ccarta.resize(anccar,larcar);
  stcarta.resize(anccar,larcar);
  atk=new Carta(xc1,ycs,xc1+anccar,ycs+larcar);
  heal=new Carta(xc2,ycs,xc2+anccar,ycs+larcar);
  tiamat=new Carta(xc3,ycs,xc3+anccar,ycs+larcar);
  venemigo=new Barra(xbe,ybe,20);
  vprota=new Barra(xbp,ybp,20);
  ero=new Enemigo(dano1,cura1);
}
void draw()
{
  background(100);
  textFont(letra);
  image(acarta,xc1,ycs);
  image(ccarta,xc2,ycs);
  image(stcarta,xc3,ycs);
  //ero.turnoe();
  atk.mousePressed(); 
  atk.accion();
  heal.mousePressed();
  heal.curar();
  tiamat.mousePressed();
  tiamat.soult();
  vprota.displayp();
  venemigo.displaye();
  
  fill(0);
  text(vidae,ybp,50);
  text(vidap,ybe,500);
  
  
}
