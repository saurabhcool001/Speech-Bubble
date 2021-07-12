//import traer.physics.*;

class sen1{
 
  ParticleSystem physics;
  Particle anchor;
  Particle p;
  Particle p1;
  Particle pe;
  Particle p2;
  Particle p3;
  Particle p4;
  Particle p5;
  Particle p6;

  Spring s,s1,se;
  Spring s2;
  Spring s3;
  Spring s4;
  Spring s5;
  Spring s6;
  
  sen1(){
    
    physics=new ParticleSystem(1,0.5);
    p=physics.makeParticle(1.0,width/2,-100,0);
    p1=physics.makeParticle(1.0,width/2,-100,0);
    p2=physics.makeParticle(1.0,width/2,-100,0);
    p3=physics.makeParticle(1.0,width/2,-100,0);
    p4=physics.makeParticle(1.0,width/2,-100,0);
    p5=physics.makeParticle(1.0,width/2,-100,0);
    p6=physics.makeParticle(1.0,width/2,-100,0);
    pe=physics.makeParticle(1.0,width/2,-100,0);
    
    anchor=physics.makeParticle(1.0,width/2,-10,0);

    //pe.velocity().set(0,-10000,-90000);
    //anchor.velocity().set(0,-10000,-90000);
   // p.velocity().set(0,-10000,-90000);
   
   pe.velocity().add(0,-9000,-95000);
    
    se=physics.makeSpring(pe,anchor,2,0.1,30);
    s=physics.makeSpring(anchor,p,2,0.1,30);
    s1=physics.makeSpring(p,p1,2,0.1,30);
    s2=physics.makeSpring(p1,p2,2,0.1,32);
    s3=physics.makeSpring(p2,p3,2,0.1,32);
    s4=physics.makeSpring(p3,p4,2,0.1,32);
    s5=physics.makeSpring(p4,p5,2,0.1,32);
    s6=physics.makeSpring(p5,p6,2,0.1,32);
    
  }
  
  void display1(float x, float y){
    physics.tick();
    pe.position().set( x, y, 0 );
    fill(#00C2F3);
    noStroke();
    rect( anchor.position().x(), anchor.position().y()+100, 80, 30 );

   
    fill(255);
    text("awake.", anchor.position().x(), anchor.position().y()+120);

    fill(#00C2F3);
    rect( p.position().x(), p.position().y()+40, 85, 30 );
    fill(255);
    text("person", p.position().x(), p.position().y()+60);
    
    fill(#00C2F3);
    rect( p1.position().x(), p1.position().y()-30, 20, 30 );
    fill(255);
    text("a", p1.position().x(), p1.position().y()-10);
    
    fill(#00C2F3);
    rect( p2.position().x(), p2.position().y()-95, 30, 30 );
    fill(255);
    text("of", p2.position().x(), p2.position().y()-70);
    
    fill(#00C2F3);
    rect( p3.position().x(), p3.position().y()-165, 75, 30 );
    fill(255);
    text("dream", p3.position().x(), p3.position().y()-140);
    
    fill(#00C2F3);
    rect( p4.position().x(), p4.position().y()-230, 40, 30 );
    fill(255);
    text("the", p4.position().x(), p4.position().y()-210);
   
    fill(#00C2F3);
    rect( p5.position().x(), p5.position().y()-295, 28, 30 );
    fill(255);
    text("is", p5.position().x(), p5.position().y()-275);
    
    fill(#00C2F3);
    rect( p6.position().x(), p6.position().y()-360, 65, 30 );
    fill(255);
    text("Hope", p6.position().x(), p6.position().y()-335);
    
  }
  
  void display2(float x, float y){
    physics.tick();
    pe.position().set( x, y, 0 );
    fill(#00D947);
    rect( anchor.position().x(), anchor.position().y()+150, 20, 30 );
   
    fill(255);
    text("?", anchor.position().x(), anchor.position().y()+170);

    fill(#00D947);
    rect( p.position().x(), p.position().y()+90, 40, 30 );
    fill(255);
    text("joy", p.position().x(), p.position().y()+110);
    
    fill(#00D947);
    rect( p1.position().x(), p1.position().y()+24, 35, 30 );
    fill(255);
    text("of", p1.position().x(), p1.position().y()+50);
    
    fill(#00D947);
    rect( p2.position().x(), p2.position().y()-42, 55, 30 );
    fill(255);
    text("idea", p2.position().x(), p2.position().y()-20);
    
    fill(#00D947);
    rect( p3.position().x(), p3.position().y()-108, 55, 30 );
    fill(255);
    text("your", p3.position().x(), p3.position().y()-88);
    
    fill(#00D947);
    rect( p4.position().x(), p4.position().y()-170, 20, 30 );
    fill(255);
    text("is", p4.position().x(), p4.position().y()-150);
   
    fill(#00D947);
    rect( p5.position().x(), p5.position().y()-235, 65, 30 );
    fill(255);
    text("What", p5.position().x(), p5.position().y()-210);
  }
  
  void display3(float x, float y){
  physics.tick();
    pe.position().set( x, y, 0 );

    fill(#D9C200);
    rect( anchor.position().x(), anchor.position().y()+120, 55, 30 );
   
    fill(255);
    text("won.", anchor.position().x(), anchor.position().y()+140);

    fill(#D9C200);
    rect( p.position().x(), p.position().y()+60, 163, 30 );
    fill(255);
    text("opportunities", p.position().x(), p.position().y()+80);
    
    fill(#D9C200);
    rect( p1.position().x(), p1.position().y()-5, 40, 30 );
    fill(255);
    text("are", p1.position().x(), p1.position().y()+20);
    
    fill(#D9C200);
    rect( p2.position().x(), p2.position().y()-70, 115, 30 );
    fill(255);
    text("mastered", p2.position().x(), p2.position().y()-45);
    
    fill(#D9C200);
    rect( p3.position().x(), p3.position().y()-135, 130, 30 );
    fill(255);
    text("Diificulties", p3.position().x(), p3.position().y()-115);     
  }
  void display4(float x, float y){
    physics.tick();
    pe.position().set( x, y, 0 );
    fill(#DD6D00);
    rect( anchor.position().x(), anchor.position().y()+150, 50, 30 );
   
    fill(255);
    text("self.", anchor.position().x(), anchor.position().y()+175);

    fill(#DD6D00);
    rect( p.position().x(), p.position().y()+90, 58, 30 );
    fill(255);
    text("your", p.position().x(), p.position().y()+115);
    
    fill(#DD6D00);
    rect( p1.position().x(), p1.position().y()+25, 100, 30 );
    fill(255);
    text("creating", p1.position().x(), p1.position().y()+45);
    
    fill(#DD6D00);
    rect( p2.position().x(), p2.position().y()-40, 70, 30 );
    fill(255);
    text("about", p2.position().x(), p2.position().y()-20);
    
    fill(#DD6D00);
    rect( p3.position().x(), p3.position().y()-105, 25, 30 );
    fill(255);
    text("is", p3.position().x(), p3.position().y()-80);
    
    fill(#DD6D00);
    rect( p4.position().x(), p4.position().y()-170, 50, 30 );
    fill(255);
    text("Life", p4.position().x(), p4.position().y()-145);     
  }
  
  void display5(float x, float y){
    physics.tick();
    pe.position().set( x, y, 0 );
    fill(#DD1A00);
    rect( anchor.position().x(), anchor.position().y()+150, 50, 30 );
   
    fill(255);
    text("can.", anchor.position().x(), anchor.position().y()+170);

    fill(#DD1A00);
    rect( p.position().x(), p.position().y()+90, 55, 30 );
    fill(255);
    text("they", p.position().x(), p.position().y()+110);
    
    fill(#DD1A00);
    rect( p1.position().x(), p1.position().y()+24, 60, 30 );
    fill(255);
    text("think", p1.position().x(), p1.position().y()+50);
    
    fill(#DD1A00);
    rect( p2.position().x(), p2.position().y()-42, 55, 30 );
    fill(255);
    text("they", p2.position().x(), p2.position().y()-20);
    
    fill(#DD1A00);
    rect( p3.position().x(), p3.position().y()-108, 100, 30 );
    fill(255);
    text("because", p3.position().x(), p3.position().y()-88);
    
    fill(#DD1A00);
    rect( p4.position().x(), p4.position().y()-170, 50, 30 );
    fill(255);
    text("can", p4.position().x(), p4.position().y()-150);
   
    fill(#DD1A00);
    rect( p5.position().x(), p5.position().y()-235, 60, 30 );
    fill(255);
    text("They", p5.position().x(), p5.position().y()-210);
  }
  
  void display6(float x, float y){
    physics.tick();
    pe.position().set( x, y, 0 );
    fill(#DD00A6);
    rect( anchor.position().x(), anchor.position().y()+150, 55, 30 );
   
    fill(255);
    text("won.", anchor.position().x(), anchor.position().y()+170);

    fill(#DD00A6);
    rect( p.position().x(), p.position().y()+90, 45, 30 );
    fill(255);
    text("not", p.position().x(), p.position().y()+110);
    
    fill(#DD00A6);
    rect( p1.position().x(), p1.position().y()+24, 50, 30 );
    fill(255);
    text("lost,", p1.position().x(), p1.position().y()+50);
    
    fill(#DD00A6);
    rect( p2.position().x(), p2.position().y()-42, 40, 30 );
    fill(255);
    text("are", p2.position().x(), p2.position().y()-20);
    
    fill(#DD00A6);
    rect( p3.position().x(), p3.position().y()-108, 80, 30 );
    fill(255);
    text("games", p3.position().x(), p3.position().y()-88);
    
    fill(#DD00A6);
    rect( p4.position().x(), p4.position().y()-170, 50, 30 );
    fill(255);
    text("ball", p4.position().x(), p4.position().y()-145);
   
    fill(#DD00A6);
    rect( p5.position().x(), p5.position().y()-235, 60, 30 );
    fill(255);
    text("Most", p5.position().x(), p5.position().y()-210);
  }
  
  void display7(float x, float y){
   physics.tick();
    pe.position().set( x, y, 0 );
    fill(#DD0058);
    rect( anchor.position().x(), anchor.position().y()+100, 85, 30 );
   
    fill(255);
    text("prison.", anchor.position().x(), anchor.position().y()+120);

    fill(#DD0058);
    rect( p.position().x(), p.position().y()+40, 20, 30 );
    fill(255);
    text("a", p.position().x(), p.position().y()+65);
    
    fill(#DD0058);
    rect( p1.position().x(), p1.position().y()-28, 25, 30 );
    fill(255);
    text("is", p1.position().x(), p1.position().y()-5);
    
    fill(#DD0058);
    rect( p2.position().x(), p2.position().y()-95, 55, 30 );
    fill(255);
    text("Fear", p2.position().x(), p2.position().y()-70); 
  }
   void display8(float x, float y){
    physics.tick();
    pe.position().set( x, y, 0 );
    fill(#6100F2);
    rect( anchor.position().x(), anchor.position().y()+150, 55, 30 );
   
    fill(255);
    text("Hell.", anchor.position().x(), anchor.position().y()+170);

    fill(#6100F2);
    rect( p.position().x(), p.position().y()+90, 100, 30 );
    fill(255);
    text("planet's", p.position().x(), p.position().y()+110);
    
    fill(#6100F2);
    rect( p1.position().x(), p1.position().y()+24, 93, 30 );
    fill(255);
    text("another", p1.position().x(), p1.position().y()+50);
    
    fill(#6100F2);
    rect( p2.position().x(), p2.position().y()-42, 22, 30 );
    fill(255);
    text("is", p2.position().x(), p2.position().y()-20);
    
    fill(#6100F2);
    rect( p3.position().x(), p3.position().y()-108, 70, 30 );
    fill(255);
    text("world", p3.position().x(), p3.position().y()-88);
    
    fill(#6100F2);
    rect( p4.position().x(), p4.position().y()-170, 50, 30 );
    fill(255);
    text("this", p4.position().x(), p4.position().y()-145);
   
    fill(#6100F2);
    rect( p5.position().x(), p5.position().y()-235, 80, 30 );
    fill(255);
    text("Maybe", p5.position().x(), p5.position().y()-210);
  }
  
  void display9(float x, float y){
   physics.tick();
    pe.position().set( x, y, 0 );

    fill(#00C2F3);
    rect( anchor.position().x(), anchor.position().y()+120, 90, 30 );
   
    fill(255);
    text("stories.", anchor.position().x(), anchor.position().y()+140);

    fill(#00C2F3);
    rect( p.position().x(), p.position().y()+60, 70, 30 );
    fill(255);
    text("great", p.position().x(), p.position().y()+80);
    
    fill(#00C2F3);
    rect( p1.position().x(), p1.position().y()-5, 65, 30 );
    fill(255);
    text("make", p1.position().x(), p1.position().y()+20);
    
    fill(#00C2F3);
    rect( p2.position().x(), p2.position().y()-70, 120, 30 );
    fill(255);
    text("decisions", p2.position().x(), p2.position().y()-45);
    
    fill(#00C2F3);
    rect( p3.position().x(), p3.position().y()-135, 50, 30 );
    fill(255);
    text("Bad", p3.position().x(), p3.position().y()-110);
  }
  
   void display10(float x, float y){
   physics.tick();
    pe.position().set( x, y, 0 );

    fill(#6100F2);
    rect( anchor.position().x(), anchor.position().y()+120, 105, 30 );
   
    fill(255);
    text("yourself.", anchor.position().x(), anchor.position().y()+140);

    fill(#6100F2);
    rect( p.position().x(), p.position().y()+60, 50, 30 );
    fill(255);
    text("find", p.position().x(), p.position().y()+80);
    
    fill(#6100F2);
    rect( p1.position().x(), p1.position().y()-5, 50, 30 );
    fill(255);
    text("and", p1.position().x(), p1.position().y()+20);
    
    fill(#6100F2);
    rect( p2.position().x(), p2.position().y()-70, 50, 30 );
    fill(255);
    text("lost", p2.position().x(), p2.position().y()-45);
    
    fill(#6100F2);
    rect( p3.position().x(), p3.position().y()-135, 50, 30 );
    fill(255);
    text("Get", p3.position().x(), p3.position().y()-112);
  }
  
   void display11(float x, float y){
    physics.tick();
    pe.position().set( x, y, 0 );

    fill(#D9C200);
    rect( anchor.position().x(), anchor.position().y()+120, 60, 30 );
   
    fill(255);
    text("need", anchor.position().x(), anchor.position().y()+140);

    fill(#D9C200);
    rect( p.position().x(), p.position().y()+60, 45, 30 );
    fill(255);
    text("you", p.position().x(), p.position().y()+80);
    
    fill(#D9C200);
    rect( p1.position().x(), p1.position().y()-5, 30, 30 );
    fill(255);
    text("all", p1.position().x(), p1.position().y()+20);
    
    fill(#D9C200);
    rect( p2.position().x(), p2.position().y()-70, 22, 30 );
    fill(255);
    text("is", p2.position().x(), p2.position().y()-45);
    
    fill(#D9C200);
    rect( p3.position().x(), p3.position().y()-135, 60, 30 );
    fill(255);
    text("Love", p3.position().x(), p3.position().y()-112);
  }
  
  void display12(float x, float y){
    physics.tick();
    pe.position().set( x, y, 0 );
    fill(#3300F2);
    rect( anchor.position().x(), anchor.position().y()+150, 70, 30 );
   
    fill(255);
    text("talent", anchor.position().x(), anchor.position().y()+175);

    fill(#3300F2);
    rect( p.position().x(), p.position().y()+90, 55, 30 );
    fill(255);
    text("your", p.position().x(), p.position().y()+112);
    
    fill(#3300F2);
    rect( p1.position().x(), p1.position().y()+25, 50, 30 );
    fill(255);
    text("kills", p1.position().x(), p1.position().y()+45);
    
    fill(#3300F2);
    rect( p2.position().x(), p2.position().y()-40, 45, 30 );
    fill(255);
    text("ego", p2.position().x(), p2.position().y()-20);
    
    fill(#3300F2);
    rect( p3.position().x(), p3.position().y()-105, 65, 30 );
    fill(255);
    text("much", p3.position().x(), p3.position().y()-80);
    
    fill(#3300F2);
    rect( p4.position().x(), p4.position().y()-170, 50, 30 );
    fill(255);
    text("Too", p4.position().x(), p4.position().y()-145); 
  }
  
  void display13(float x, float y){
    physics.tick();
    pe.position().set( x, y, 0 );
    fill(#DD1A00);
    rect( anchor.position().x(), anchor.position().y()+150, 68, 30 );
   
    fill(255);
    text("them.", anchor.position().x(), anchor.position().y()+173);

    fill(#DD1A00);
    rect( p.position().x(), p.position().y()+90, 77, 30 );
    fill(255);
    text("Chase", p.position().x(), p.position().y()+112);
    
    fill(#DD1A00);
    rect( p1.position().x(), p1.position().y()+25, 95, 30 );
    fill(255);
    text("dreams,", p1.position().x(), p1.position().y()+45);
    
    fill(#DD1A00);
    rect( p2.position().x(), p2.position().y()-40, 55, 30 );
    fill(255);
    text("your", p2.position().x(), p2.position().y()-20);
    
    fill(#DD1A00);
    rect( p3.position().x(), p3.position().y()-105, 72, 30 );
    fill(255);
    text("follow", p3.position().x(), p3.position().y()-80);
    
    fill(#DD1A00);
    rect( p4.position().x(), p4.position().y()-170, 65, 30 );
    fill(255);
    text("Don't", p4.position().x(), p4.position().y()-145); 
  }
  
  void display14(float x, float y){
    physics.tick();
    pe.position().set( x, y, 0 );
    fill(#6100F2);
    rect( anchor.position().x(), anchor.position().y()+100, 90, 30 );

   
    fill(255);
    text("silence.", anchor.position().x(), anchor.position().y()+120);

    fill(#6100F2);
    rect( p.position().x(), p.position().y()+40, 52, 30 );
    fill(255);
    text("than", p.position().x(), p.position().y()+60);
    
    fill(#6100F2);
    rect( p1.position().x(), p1.position().y()-30, 70, 30 );
    fill(255);
    text("better", p1.position().x(), p1.position().y()-10);
    
    fill(#6100F2);
    rect( p2.position().x(), p2.position().y()-95, 125, 30 );
    fill(255);
    text("something", p2.position().x(), p2.position().y()-75);
    
    fill(#6100F2);
    rect( p3.position().x(), p3.position().y()-165, 42, 30 );
    fill(255);
    text("say", p3.position().x(), p3.position().y()-145);
    
    fill(#6100F2);
    rect( p4.position().x(), p4.position().y()-230, 30, 30 );
    fill(255);
    text("or", p4.position().x(), p4.position().y()-210);
   
    fill(#6100F2);
    rect( p5.position().x(), p5.position().y()-295, 70, 30 );
    fill(255);
    text("silent,", p5.position().x(), p5.position().y()-275);
    
    fill(#6100F2);
    rect( p6.position().x(), p6.position().y()-360, 38, 30 );
    fill(255);
    text("Be", p6.position().x(), p6.position().y()-335);
  }
  void display15(float x, float y){
    physics.tick();
    pe.position().set( x, y, 0 );
    fill(#DD00A6);
    rect( anchor.position().x(), anchor.position().y()+150, 65, 30 );
   
    fill(255);
    text("hope.", anchor.position().x(), anchor.position().y()+170);

    fill(#DD00A6);
    rect( p.position().x(), p.position().y()+90, 25, 30 );
    fill(255);
    text("of", p.position().x(), p.position().y()+110);
    
    fill(#DD00A6);
    rect( p1.position().x(), p1.position().y()+24, 78, 30 );
    fill(255);
    text("dealer", p1.position().x(), p1.position().y()+48);
    
    fill(#DD00A6);
    rect( p2.position().x(), p2.position().y()-42, 20, 30 );
    fill(255);
    text("a", p2.position().x(), p2.position().y()-20);
    
    fill(#DD00A6);
    rect( p3.position().x(), p3.position().y()-108, 22, 30 );
    fill(255);
    text("is", p3.position().x(), p3.position().y()-88);
    
    fill(#DD00A6);
    rect( p4.position().x(), p4.position().y()-170, 85, 30 );
    fill(255);
    text("Leader", p4.position().x(), p4.position().y()-148);
   
    fill(#DD00A6);
    rect( p5.position().x(), p5.position().y()-235, 20, 30 );
    fill(255);
    text("A", p5.position().x(), p5.position().y()-215);
  }
  
  void display16(float x, float y){
    physics.tick();
    pe.position().set( x, y, 0 );
    fill(#00D947);
    rect( anchor.position().x(), anchor.position().y()+150, 80, 30 );
   
    fill(255);
    text("books.", anchor.position().x(), anchor.position().y()+172);

    fill(#00D947);
    rect( p.position().x(), p.position().y()+90, 55, 30 );
    fill(255);
    text("than", p.position().x(), p.position().y()+112);
    
    fill(#00D947);
    rect( p1.position().x(), p1.position().y()+25, 60, 30 );
    fill(255);
    text("more", p1.position().x(), p1.position().y()+45);
    
    fill(#00D947);
    rect( p2.position().x(), p2.position().y()-40, 35, 30 );
    fill(255);
    text("us", p2.position().x(), p2.position().y()-20);
    
    fill(#00D947);
    rect( p3.position().x(), p3.position().y()-105, 65, 30 );
    fill(255);
    text("teach", p3.position().x(), p3.position().y()-80);
    
    fill(#00D947);
    rect( p4.position().x(), p4.position().y()-170, 70, 30 );
    fill(255);
    text("Years", p4.position().x(), p4.position().y()-145);
  }
  
  void display17(float x, float y){
     physics.tick();
    pe.position().set( x, y, 0 );
    fill(#DD1A00);
    rect( anchor.position().x(), anchor.position().y()+150, 100, 30 );
   
    fill(255);
    text("majority.", anchor.position().x(), anchor.position().y()+170);

    fill(#DD1A00);
    rect( p.position().x(), p.position().y()+90, 42, 30 );
    fill(255);
    text("the", p.position().x(), p.position().y()+112);
    
    fill(#DD1A00);
    rect( p1.position().x(), p1.position().y()+24, 80, 30 );
    fill(255);
    text("makes", p1.position().x(), p1.position().y()+45);
    
    fill(#DD1A00);
    rect( p2.position().x(), p2.position().y()-42, 98, 30 );
    fill(255);
    text("courage", p2.position().x(), p2.position().y()-20);
    
    fill(#DD1A00);
    rect( p3.position().x(), p3.position().y()-108, 48, 30 );
    fill(255);
    text("with", p3.position().x(), p3.position().y()-85);
    
    fill(#DD1A00);
    rect( p4.position().x(), p4.position().y()-170, 50, 30 );
    fill(255);
    text("man", p4.position().x(), p4.position().y()-148);
   
    fill(#DD1A00);
    rect( p5.position().x(), p5.position().y()-235, 52, 30 );
    fill(255);
    text("One", p5.position().x(), p5.position().y()-212);
  }
  
  void display18(float x, float y){
    physics.tick();
    pe.position().set( x, y, 0 );
    fill(#DD0058);
    rect( anchor.position().x(), anchor.position().y()+150, 60, 30 );
   
    fill(255);
    text("staff.", anchor.position().x(), anchor.position().y()+172);

    fill(#DD0058);
    rect( p.position().x(), p.position().y()+90, 60, 30 );
    fill(255);
    text("have", p.position().x(), p.position().y()+112);
    
    fill(#DD0058);
    rect( p1.position().x(), p1.position().y()+25, 58, 30 );
    fill(255);
    text("Cats", p1.position().x(), p1.position().y()+48);
    
    fill(#DD0058);
    rect( p2.position().x(), p2.position().y()-40, 105, 30 );
    fill(255);
    text("masters,", p2.position().x(), p2.position().y()-18);
    
    fill(#DD0058);
    rect( p3.position().x(), p3.position().y()-105, 60, 30 );
    fill(255);
    text("have", p3.position().x(), p3.position().y()-82);
    
    fill(#DD0058);
    rect( p4.position().x(), p4.position().y()-170, 62, 30 );
    fill(255);
    text("Dogs", p4.position().x(), p4.position().y()-148);
  }
   void display19(float x, float y){
    physics.tick();
    pe.position().set( x, y, 0 );
    fill(#741D23);
    rect( anchor.position().x(), anchor.position().y()+50,90,30 );
   
    fill(255);
    text("motion", anchor.position().x()+5, anchor.position().y()+70);

    fill(#741D23);
    rect( p.position().x()+8, p.position().y()-10, 25, 30 );
    fill(255);
    text("is", p.position().x()+8, p.position().y()+10);
    
    fill(#741D23);
    rect( p1.position().x(), p1.position().y()-75, 50, 30 );
    fill(255);
    text("Joy", p1.position().x(), p1.position().y()-50); 
  }
  
  void display20(float x, float y){
    physics.tick();
    pe.position().set( x, y, 0 );
    fill(#40388E);
    rect( anchor.position().x(), anchor.position().y()+150, 20, 30 );
   
    fill(255);
    text("?", anchor.position().x(), anchor.position().y()+170);

    fill(#40388E);
    rect( p.position().x(), p.position().y()+90, 40, 30 );
    fill(255);
    text("joy", p.position().x(), p.position().y()+110);
    
    fill(#40388E);
    rect( p1.position().x(), p1.position().y()+24, 40, 30 );
    fill(255);
    text("of", p1.position().x(), p1.position().y()+50);
    
    fill(#40388E);
    rect( p2.position().x(), p2.position().y()-42, 55, 30 );
    fill(255);
    text("idea", p2.position().x(), p2.position().y()-20);
    
    fill(#40388E);
    rect( p3.position().x(), p3.position().y()-108, 55, 30 );
    fill(255);
    text("your", p3.position().x(), p3.position().y()-88);
    
    fill(#40388E);
    rect( p4.position().x(), p4.position().y()-170, 20, 30 );
    fill(255);
    text("is", p4.position().x(), p4.position().y()-150);
   
    fill(#40388E);
    rect( p5.position().x(), p5.position().y()-235, 65, 30 );
    fill(255);
    text("What", p5.position().x(), p5.position().y()-210);
  }
  
   void display21(float x, float y){
   physics.tick();
    pe.position().set( x, y, 0 );
    fill(#4C0755);
    rect( anchor.position().x(), anchor.position().y()+100,135,30 );
   
    fill(255);
    text("experience", anchor.position().x(), anchor.position().y()+120);

    fill(#4C0755);
    rect( p.position().x(), p.position().y()+40, 25, 30 );
    fill(255);
    text("is", p.position().x(), p.position().y()+60);
    
    fill(#4C0755);
    rect( p1.position().x(), p1.position().y()-28, 45, 30 );
    fill(255);
    text("Joy", p1.position().x(), p1.position().y()-5);
  }

  void update1(float x, float y){
//  pe.velocity().set(0,-5000,-9000);
//  pe.velocity().add(width/2,-9000,0);

    p.velocity().add(0,-9000,-9000);
    p.position().set(x,y,0);
    
  }
  void update2(float x, float y){
//    p.velocity().add(0,-9000,-9000);
    p.velocity().add(0,-27000,-56000);

    p.position().set(x,y,0);
  } 
  void update3(float x, float y){
    p.velocity().add(0,-9000,-9000);
    p.position().set(x,y,0);
  } 
  void update4(float x, float y){
    p.velocity().add(0,-9000,-9000);
    p.position().set(x,y,0);
  } 
  void update5(float x, float y){
    p.velocity().add(0,-9000,-9000);
    p.position().set(x,y,0);
  } 
  void update6(float x, float y){
//    p.velocity().add(0,-9000,-9000);
    p.velocity().add(0,-27000,-56000);

    p.position().set(x,y,0);
  } 
  void update7(float x, float y){
//    p.velocity().add(0,-9000,-9000);
    p.velocity().add(0,-27000,-56000);

    p.position().set(x,y,0);
  } 
  void update8(float x, float y){
    p.velocity().add(0,-9000,-9000);
    p.position().set(x,y,0);
  } 
  void update9(float x, float y){
//    p.velocity().add(0,-9000,-9000);
    p.velocity().add(0,-27000,-56000);

    p.position().set(x,y,0);
  } 
  void update10(float x, float y){
    p.velocity().add(0,-9000,-9000);
    p.position().set(x,y,0);
  } 
  void update11(float x, float y){
//    p.velocity().add(0,-9000,-9000);
    p.velocity().add(0,-27000,-56000);

    p.position().set(x,y,0);
  } 
  void update12(float x, float y){
//    p.velocity().add(0,-9000,-9000);
    p.velocity().add(0,-27000,-56000);

    p.position().set(x,y,0);
  } 
  void update13(float x, float y){
//    p.velocity().add(0,-9000,-9000);
    p.velocity().add(0,-27000,-56000);

    p.position().set(x,y,0);
  } 
  void update14(float x, float y){
    p.velocity().add(0,-9000,-9000);
    p.position().set(x,y,0);
  } 
  void update15(float x, float y){
    p.velocity().add(0,-9000,-9000);
    p.position().set(x,y,0);
  } 
  void update16(float x, float y){
    p.velocity().add(0,-9000,-9000);
    p.position().set(x,y,0);
  } 
  void update17(float x, float y){
//    p.velocity().add(0,-9000,-9000);
    p.velocity().add(0,-27000,-56000);

    p.position().set(x,y,0);
  } 
  void update18(float x, float y){
//    p.velocity().add(0,-9000,-9000);
    p.velocity().add(0,-27000,-56000);

    p.position().set(x,y,0);
  } 
  void update19(float x, float y){
    p.velocity().add(0,-9000,-9000);
    p.position().set(x,y,0);
  } 
  void update20(float x, float y){
//    p.velocity().add(0,-9000,-9000);
    p.velocity().add(0,-27000,-56000);

    p.position().set(x,y,0);
  } 
  void update21(float x, float y){
    p.velocity().add(0,-9000,-9000);
    p.position().set(x,y,0);
  } 


  
  
}