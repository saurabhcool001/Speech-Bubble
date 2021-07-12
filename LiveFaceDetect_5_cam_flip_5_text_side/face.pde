class Face {

  // A Rectangle
  Rectangle r, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;

  boolean available;
  boolean delete;
  int timer = 20;
  int id;
  
  Face(int x, int y, int w, int h) {

    r = new Rectangle(x, y, w, h);

    available = true;
    delete = false;
    id = faceCount;
    faceCount++;
  }
  void display() {

    if (id==0) {
      //println((r.x*scl+50)+ "      " +(r.y*scl-220));
      s1.display1(width-(r.x*scl+80), (r.y*scl-220));
      println("0");
    }
    if (id==1) {
      println("1");
      s2.display2(width-(r.x*scl+80), r.y*scl-270);
    }
    if (id==2) {
      println("2");
      s3.display3(width-(r.x*scl+80), r.y*scl-240);
    }

    if (id==3) {
      println("3");
      s4.display4(width-(r.x*scl+80), r.y*scl-270);
      // s4.display7(r.x*scl+60,r.y*scl-220);
    }
    if (id==4) {
      s5.display5(width-(r.x*scl+80), r.y*scl-270);
    }
    if (id==5) {
      s6.display6(width-(r.x*scl+80), r.y*scl-270);
    }
    if (id==6) {
      s7.display7(width-(r.x*scl+60), r.y*scl-220);
    }
    if (id==7) {
      s8.display8(width-(r.x*scl+80), r.y*scl-270);
    }
    if (id==8) {
      s9.display9(width-(r.x*scl+60), r.y*scl-240);
    }
    if (id==9) {
      s10.display10(width-(r.x*scl+60), r.y*scl-240);
    }
    if (id==10) {
      s11.display11(width-(r.x*scl+60), r.y*scl-240);
    }
    if (id==11) {
      s12.display12(width-(r.x*scl+80), r.y*scl-270);
    }
    if (id==12) {
      s13.display13(width-(r.x*scl+80), r.y*scl-270);
    }
    if (id==13) {
      s14.display14(width-(r.x*scl+50), r.y*scl-220);
    }
    if (id==14) {
      s15.display15(width-(r.x*scl+80), r.y*scl-270);
    }
    if (id==15) {
      s16.display16(width-(r.x*scl+80), r.y*scl-270);
    }
    if (id==16) {
      s17.display17(width-(r.x*scl+80), r.y*scl-270);
    }
    if (id==17) {
      s18.display18(width-(r.x*scl+80), r.y*scl-270);
    }
    /*  if(id==18){
     s19.display19(r.x*scl+100,r.y*scl-250);
     }
     if(id==19){
     s20.display20(r.x*scl+100,r.y*scl-250);
     }
     if(id==20){
     s21.display21(r.x*scl+100,r.y*scl-250);
     }
     */

    if (id==9) {
      if (faceCount>=9) {
        faceCount=0;
        s1.update1(width-(r.x*scl), (r.y*scl));
        s2.update2(width-(r.x*scl), r.y*scl-270);
        s3.update3(width-(r.x*scl), (r.y*scl));
        s4.update4(r.x*scl, r.y*scl);
        s5.update5(r.x*scl, r.y*scl);
        s6.update6(r.x*scl, r.y*scl);
        s7.update7(r.x*scl, r.y*scl);
        s8.update8(r.x*scl, r.y*scl);
        s9.update9(r.x*scl, r.y*scl);
        s10.update10(r.x*scl, r.y*scl);
        s11.update11(r.x*scl, r.y*scl);
        s12.update12(r.x*scl, r.y*scl);
        s13.update13(r.x*scl, r.y*scl);
        s14.update14(r.x*scl, r.y*scl);
        s15.update15(r.x*scl, r.y*scl);
        s16.update16(r.x*scl, r.y*scl);
        s17.update17(r.x*scl, r.y*scl);
        s18.update18(r.x*scl, r.y*scl);
        /*s19.update19(r.x*scl,r.y*scl);
         s20.update20(r.x*scl,r.y*scl);
         s21.update21(r.x*scl,r.y*scl);  */
      }
    }
  }
  // Give me a new location / size
  // Oooh, it would be nice to lerp here!
  void update(Rectangle newR) {
    r = (Rectangle) newR.clone();
  }

  // Count me down, I am gone
  void countDown() {
    timer--;
    //fill(255, 0, 0);
    //textSize(24);
    //text("timer : " + timer, 10, 80);
  }

  // I am deed, delete me
  boolean dead() {
    if (timer < 0)return true;
    return false;
  }
}
