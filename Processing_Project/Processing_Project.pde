/*
* Creates a light saber which changes color and 
plays Darth Vader sound clip when pressed
*/
import ddf.minim.*;
PImage bg;
Minim minim;
AudioPlayer player;

void setup() 
{
  size(1024, 768);
  bg = loadImage("night-sky1.jpg");
  
  //Audio Player learned from Processing.org
  minim = new Minim(this);
  player = minim.loadFile("darthvader_yourfather.wav");
  
}

void draw() 
{
  //loads starry night background image
  background(bg);
  
  //draws a red lightsaber if the mouse is pressed
  if (mousePressed)
  {
    fill(#868383);
    ellipse(522, 655, 22, 30);
    fill(#868383);
    rect(512, 580, 20, 80);
    fill(225, 225, 225);
    rect(507, 550, 30, 50);
    fill(#E80707);
    ellipse(522, 565, 15, 15);
    fill(#868383);
    rect(512, 520, 20, 30);
    fill(0, 0, 0);
    rect(512, 525, 20, 5);
    rect(512, 535, 20, 5);
    rect(512, 545, 20, 5);
    fill(#F50707);
    ellipse(523, 135, 25, 30);
    rect(510, 135, 25, 385);
  
    player.play();
    player.rewind();
  }

  //otherwise displays a green lightsaber
  else
  {
    fill(#868383);
    ellipse(522, 655, 22, 30);
    fill(#868383);
    rect(512, 580, 20, 80);
    fill(225, 225, 225);
    rect(507, 550, 30, 50);
    fill(#E80707);
    ellipse(522, 565, 15, 15);
    fill(#868383);
    rect(512, 520, 20, 30);
    fill(0, 0, 0);
    rect(512, 525, 20, 5);
    rect(512, 535, 20, 5);
    rect(512, 545, 20, 5);
    fill(#6FFA42);
    ellipse(523, 135, 25, 30);
    rect(510, 135, 25, 385);
  }
}

