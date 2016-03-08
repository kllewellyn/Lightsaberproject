import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Processing_Project extends PApplet {

/*
* Creates a light saber which changes color and 
plays Darth Vader sound clip when pressed
*/

PImage bg;
Minim minim;
AudioPlayer player;

public void setup() 
{
  size(1024, 768);
  bg = loadImage("night-sky1.jpg");
  
  //Audio Player learned from Processing.org
  minim = new Minim(this);
  player = minim.loadFile("darthvader_yourfather.wav");
  
}

public void draw() 
{
  //loads starry night background image
  background(bg);
  
  //draws a red lightsaber if the mouse is pressed
  if (mousePressed)
  {
    fill(0xff868383);
    ellipse(522, 655, 22, 30);
    fill(0xff868383);
    rect(512, 580, 20, 80);
    fill(225, 225, 225);
    rect(507, 550, 30, 50);
    fill(0xffE80707);
    ellipse(522, 565, 15, 15);
    fill(0xff868383);
    rect(512, 520, 20, 30);
    fill(0, 0, 0);
    rect(512, 525, 20, 5);
    rect(512, 535, 20, 5);
    rect(512, 545, 20, 5);
    fill(0xffF50707);
    ellipse(523, 135, 25, 30);
    rect(510, 135, 25, 385);
  
    player.play();
    player.rewind();
  }

  //otherwise displays a green lightsaber
  else
  {
    fill(0xff868383);
    ellipse(522, 655, 22, 30);
    fill(0xff868383);
    rect(512, 580, 20, 80);
    fill(225, 225, 225);
    rect(507, 550, 30, 50);
    fill(0xffE80707);
    ellipse(522, 565, 15, 15);
    fill(0xff868383);
    rect(512, 520, 20, 30);
    fill(0, 0, 0);
    rect(512, 525, 20, 5);
    rect(512, 535, 20, 5);
    rect(512, 545, 20, 5);
    fill(0xff6FFA42);
    ellipse(523, 135, 25, 30);
    rect(510, 135, 25, 385);
  }
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "Processing_Project" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
