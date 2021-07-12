import traer.physics.*;

// Face It
// ITP Fall 2013
// Daniel Shiffman

// Now we need the video library
import processing.video.*;

// Import the library
import gab.opencv.*;

// We need Java rectangles
import java.awt.Rectangle;

// Library object
OpenCV opencv, opencv2;

// Capture object
Capture cam, cam2;

Movie mov;

// scld down image
PImage smaller, img1, camimg;

// Array of faces found
Rectangle[] faces;

int scl = 4;

sen1 s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, s21;
int num=0;
boolean yes=false;
ArrayList<Face> faceList;
int faceCount = 0;
PFont font;

void setup() {
  size(1280, 720, P3D);
  //frameRate(30);
  // Start capturing
  cam = new Capture(this, 640, 480);
  cam.start();

  // Create the OpenCV object
  opencv = new OpenCV(this, 320, 180);
  opencv2 = new OpenCV(this, 640, 480);

  // Which "cascade" are we going to use?
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE); 
  mov = new Movie(this, "1.mp4");
  mov.loop();
  // Make scld down image
  smaller = createImage(opencv.width, opencv.height, RGB);

  camimg = createImage(opencv2.width, opencv2.height, RGB);

  font = loadFont("Arial-BoldMT-48.vlw");
  textFont(font, 25);

  s1=new sen1();
  s2=new sen1();

  s3=new sen1();

  s4=new sen1();

  s5=new sen1();

  s6=new sen1();

  s7=new sen1();

  s8=new sen1();

  s9=new sen1();

  s10=new sen1();

  s11=new sen1();
  s12=new sen1();
  s13=new sen1();
  s14=new sen1();
  s15=new sen1();
  s16=new sen1();
  s17=new sen1();
  s18=new sen1();
  s19=new sen1();
  s20=new sen1();
  s21=new sen1();

  faceList = new ArrayList<Face>();
}

// New images from camera
void captureEvent(Capture cam) {
  cam.read();

  // Make smaller image
  smaller.copy(cam, 0, 0, cam.width, cam.height, 0, 0, smaller.width, smaller.height);
  smaller.updatePixels();

  camimg.copy(cam, 0, 0, cam.width, cam.height, 0, 0, camimg.width, camimg.height);
  camimg.updatePixels();
}

void movieEvent(Movie mov){
  mov.read();
}

void draw() {
  surface.setTitle((int) frameRate + " fps");
  background(0);
  //println(frameRate);

  // We have to always "load" the  image into OpenCV 
  // But we check against the smaller image here
  opencv.loadImage(smaller);
  opencv2.loadImage(camimg);
  // Detect the faces
  faces = opencv.detect();


  //PImage p = opencv2.getOutput();
  PImage q = opencv2.getInput();
  opencv2.flip(OpenCV.HORIZONTAL); 
  //image(q, 0, 0,1280,720);
  pushMatrix();
  scale(-1, 1);
  translate(-1280, 0);
  image(q, 0, 0, width, height); 
  popMatrix(); 
  //image(mov, 0, 0);
  //PImage src = opencv.getOutput();
  //opencv = new OpenCV(this, cam);
  //image(src, 0, 0, 1280, 720);
  // Draw the video
  //scale(-1,1);
  //image(opencv.getInput() , 0, 0, width, height);
  //pushMatrix();
  //scale(-1,1);
  //translate(-cam.width, 0);
  // image(camimg, 0, 0, width, height); 
  //popMatrix(); 
  
  //textSize(40);
  //fill(255, 0, 0);
  //text(frameRate, 100, 100);
  



  if (faceList.isEmpty()) {
    // Just make a Face object for every face Rectangle
    for (int i = 0; i < faces.length; i++) {
      faceList.add(new Face(faces[i].x, faces[i].y, faces[i].width, faces[i].height));
    }
    // SCENARIO 2: We have fewer Face objects than face Rectangles found from OPENCV
  } else if (faceList.size() <= faces.length) {
    boolean[] used = new boolean[faces.length];
    // Match existing Face objects with a Rectangle
    for (Face f : faceList) {
      // Find faces[index] that is closest to face f
      // set used[index] to true so that it can't be used twice
      float record = 50000;
      int index = -1;
      for (int i = 0; i < faces.length; i++) {
        float d = dist(faces[i].x, faces[i].y, f.r.x, f.r.y);
        if (d < record && !used[i]) {
          record = d;
          index = i;
        }
      }
      // Update Face object location
      used[index] = true;
      f.update(faces[index]);
    }
    // Add any unused faces
    for (int i = 0; i < faces.length; i++) {
      if (!used[i]) {
        faceList.add(new Face(faces[i].x, faces[i].y, faces[i].width, faces[i].height));
      }
    }
    // SCENARIO 3: We have more Face objects than face Rectangles found
  } else {
    // All Face objects start out as available
    for (Face f : faceList) {
      f.available = true;
    } 
    // Match Rectangle with a Face object
    for (int i = 0; i < faces.length; i++) {
      // Find face object closest to faces[i] Rectangle
      // set available to false
      float record = 50000;
      int index = -1;
      for (int j = 0; j < faceList.size(); j++) {
        Face f = faceList.get(j);
        float d = dist(faces[i].x, faces[i].y, f.r.x, f.r.y);
        if (d < record && f.available) {
          record = d;
          index = j;
        }
      }
      // Update Face object location
      Face f = faceList.get(index);
      f.available = false;
      f.update(faces[i]);
    } 
    // Start to kill any left over Face objects
    for (Face f : faceList) {
      if (f.available) {
        f.countDown();
        if (f.dead()) {
          f.delete = true;
        }
      }
    }
  }



  // Delete any that should be deleted
  for (int i = faceList.size()-1; i >= 0; i--) {
    Face f = faceList.get(i);
    if (f.delete) {
      faceList.remove(i);
    }
  }

  // Draw all the faces
  //for (int i = 0; i < faces.length; i++) {
  //  noFill();
  //  stroke(255, 0, 0);
  //  //noStroke();
  //  rect(width-(faces[i].x*scl)-(faces[i].width*scl), faces[i].y*scl, faces[i].width*scl, faces[i].height*scl);
  //  //  rect(faces[i].x*scl,faces[i].y*scl,faces[i].width,faces[i].height*scl);
  //}



  for (Face f : faceList) {
    f.display();
  }

  // If we find faces, draw them!
  //if (faces != null) {
  //  for (int i = 0; i < faces.length; i++) {
  //    strokeWeight(2);
  //    stroke(255, 0, 0);
  //    noFill();
  //    rect(faces[i].x*scl, faces[i].y*scl, faces[i].width*scl, faces[i].height*scl);
  //  }
  //}


  //fill(255);
  //textSize(24);
  //text("Click mouse to save faces to image files", 10, height-30);
}

void mousePressed() {
  if (faces != null) {
    for (int i = 0; i < faces.length; i++) {
      PImage cropped = createImage(faces[i].width*scl, faces[i].height*scl, RGB);
      cropped.copy(cam, faces[i].x*scl, faces[i].y*scl, faces[i].width*scl, faces[i].height*scl, 0, 0, faces[i].width*scl, faces[i].height*scl);
      cropped.updatePixels();
      cropped.save("faces/face-"+i+".jpg");
    }
  }
}