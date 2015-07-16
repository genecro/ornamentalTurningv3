import controlP5.*;
import java.awt.Frame;
import java.awt.BorderLayout;

ControlP5 cp5;

Textlabel wheel1TextLabel, wheel2TextLabel, wheel3TextLabel;
CheckBox wheel1CheckBox, wheel2CheckBox, wheel3CheckBox;

int ctrlPaneHeight, ctrlPaneWidth;

void setup() {
  ctrlPaneHeight = 200;
  ctrlPaneWidth = 600;
  size(ctrlPaneWidth, ctrlPaneHeight+ctrlPaneWidth);
  background(255);
  noStroke();
  
  cp5 = new ControlP5(this);
  
  wheel1TextLabel = cp5.addTextlabel("wheel1")
                       .setText("Wheel 1:")
                       .setPosition(21, 25)
                       .setColor(0)
                       ;
                       
  wheel1CheckBox = cp5.addCheckBox("wheel1Check")
                      .setPosition(120, 25)
                      .setColorBackground(color(220))
                      .setColorActive(color(0))
                      .setSize(10,10)
                      .addItem("circular",0)
                      .setColorLabels(color(0))
                      ;
  
  cp5.addTextfield("wheel1HRadius")
     .setPosition(25, 60)
     .setSize(150, 14)
     .setColorBackground(color(255))
     .setColorCaptionLabel(color(0))
     .setColorValueLabel(color(0))
     .setColorForeground(color(0))
     .setCaptionLabel("h radius")
     .setValue("200")
  ;
  
  cp5.addTextfield("wheel1VRadius")
     .setPosition(25, 93)
     .setSize(150, 14)
     .setColorBackground(color(255))
     .setColorCaptionLabel(color(0))
     .setColorValueLabel(color(0))
     .setColorForeground(color(0))
     .setCaptionLabel("v radius")
     .setValue("150")
  ;
  
  cp5.addTextfield("wheel1Speed")
     .setPosition(25, 125)
     .setSize(150, 14)
     .setColorBackground(color(255))
     .setColorCaptionLabel(color(0))
     .setColorValueLabel(color(0))
     .setColorForeground(color(0))
     .setCaptionLabel("speed")
     .setValue("500")
  ;
                       
  wheel2TextLabel = cp5.addTextlabel("wheel2")
                       .setText("Wheel 2:")
                       .setPosition(221, 25)
                       .setColor(0)
                       ;
                       
  wheel2CheckBox = cp5.addCheckBox("wheel2Check")
                      .setPosition(324, 25)
                      .setColorBackground(color(220))
                      .setColorActive(color(0))
                      .setSize(10,10)
                      .addItem("Circular",0)
                      .setColorLabels(color(0))
                      ;
                      
  cp5.addTextfield("wheel2HRadius")
     .setPosition(225, 60)
     .setSize(150, 14)
     .setColorBackground(color(255))
     .setColorCaptionLabel(color(0))
     .setColorValueLabel(color(0))
     .setColorForeground(color(0))
     .setCaptionLabel("h radius")
     .setValue("50")
  ;
  
  cp5.addTextfield("wheel2VRadius")
     .setPosition(225, 93)
     .setSize(150, 14)
     .setColorBackground(color(255))
     .setColorCaptionLabel(color(0))
     .setColorValueLabel(color(0))
     .setColorForeground(color(0))
     .setCaptionLabel("v radius")
     .setValue("40")
  ;
  
  cp5.addTextfield("wheel2Speed")
     .setPosition(225, 125)
     .setSize(150, 14)
     .setColorBackground(color(255))
     .setColorCaptionLabel(color(0))
     .setColorValueLabel(color(0))
     .setColorForeground(color(0))
     .setCaptionLabel("speed")
     .setValue("100")
  ;
                       
  wheel3TextLabel = cp5.addTextlabel("wheel3")
                       .setText("Wheel 3:")
                       .setPosition(421, 25)
                       .setColor(0)
                       ;

  wheel3CheckBox = cp5.addCheckBox("wheel3Check")
                      .setPosition(524, 25)
                      .setColorBackground(color(220))
                      .setColorActive(color(0))
                      .setSize(10,10)
                      .addItem("circulaR",0)
                      .setColorLabels(color(0))
                      ;
                      
  cp5.addTextfield("wheel3HRadius")
     .setPosition(425, 60)
     .setSize(150, 14)
     .setColorBackground(color(255))
     .setColorCaptionLabel(color(0))
     .setColorValueLabel(color(0))
     .setColorForeground(color(0))
     .setCaptionLabel("h radius")
     .setValue("15")
  ;
  
  cp5.addTextfield("wheel3VRadius")
     .setPosition(425, 93)
     .setSize(150, 14)
     .setColorBackground(color(255))
     .setColorCaptionLabel(color(0))
     .setColorValueLabel(color(0))
     .setColorForeground(color(0))
     .setCaptionLabel("v radius")
     .setValue("20")
  ;
  
  cp5.addTextfield("wheel3Speed")
     .setPosition(425, 125)
     .setSize(150, 14)
     .setColorBackground(color(255))
     .setColorCaptionLabel(color(0))
     .setColorValueLabel(color(0))
     .setColorForeground(color(0))
     .setCaptionLabel("speed")
     .setValue("5000")
  ;
  
  cp5.addButton("turn")
     .setPosition(24, 165)
     .setSize(100, 14)
     //.lock()
     ;
}

void draw() {
  fill(255);
  noStroke();
  rect(0,0,ctrlPaneWidth,ctrlPaneHeight);
}

void controlEvent(ControlEvent theEvent) {
  if(theEvent.isFrom(wheel1CheckBox)) {
    if((int)wheel1CheckBox.getArrayValue()[0] == 1) {
      cp5.get(Textfield.class,"wheel1VRadius").hide();
      cp5.get(Textfield.class,"wheel1HRadius").setCaptionLabel("radius");
    }
    else {
      cp5.get(Textfield.class,"wheel1VRadius").show();
      cp5.get(Textfield.class,"wheel1HRadius").setCaptionLabel("h radius");
    }
  }
  
  if(theEvent.isFrom(wheel2CheckBox)) {
    if((int)wheel2CheckBox.getArrayValue()[0] == 1) {
      cp5.get(Textfield.class,"wheel2VRadius").hide();
      cp5.get(Textfield.class,"wheel2HRadius").setCaptionLabel("radius");
    }
    else {
      cp5.get(Textfield.class,"wheel2VRadius").show();
      cp5.get(Textfield.class,"wheel2HRadius").setCaptionLabel("h radius");
    }
  }
  
  if(theEvent.isFrom(wheel3CheckBox)) {
    if((int)wheel3CheckBox.getArrayValue()[0] == 1) {
      cp5.get(Textfield.class,"wheel3VRadius").hide();
      cp5.get(Textfield.class,"wheel3HRadius").setCaptionLabel("radius");
    }
    else {
      cp5.get(Textfield.class,"wheel3VRadius").show();
      cp5.get(Textfield.class,"wheel3HRadius").setCaptionLabel("h radius");
    }
  }
}

public void turn(int theValue) {
  ArrayList<Wheel> wheels = new ArrayList<Wheel>();
  float maxDiv = 0;
  
  noStroke();
  fill(255);
  rect(0, ctrlPaneHeight, ctrlPaneWidth, ctrlPaneWidth);
  
  if((int)wheel1CheckBox.getArrayValue()[0] == 1) {
    wheels.add(new CircularWheel(Integer.parseInt(cp5.get(Textfield.class,"wheel1HRadius").getText()), 2*PI/Integer.parseInt(cp5.get(Textfield.class,"wheel1Speed").getText())));
  }
  else {
    wheels.add(new Wheel(Integer.parseInt(cp5.get(Textfield.class,"wheel1HRadius").getText()), Integer.parseInt(cp5.get(Textfield.class,"wheel1VRadius").getText()), 2*PI/Integer.parseInt(cp5.get(Textfield.class,"wheel1Speed").getText())));
  }
  
  if((int)wheel2CheckBox.getArrayValue()[0] == 1) {
    wheels.add(new CircularWheel(Integer.parseInt(cp5.get(Textfield.class,"wheel2HRadius").getText()), 2*PI/Integer.parseInt(cp5.get(Textfield.class,"wheel2Speed").getText())));
  }
  else {
    wheels.add(new Wheel(Integer.parseInt(cp5.get(Textfield.class,"wheel2HRadius").getText()), Integer.parseInt(cp5.get(Textfield.class,"wheel2VRadius").getText()), 2*PI/Integer.parseInt(cp5.get(Textfield.class,"wheel2Speed").getText())));
  }
  
  if((int)wheel3CheckBox.getArrayValue()[0] == 1) {
    wheels.add(new CircularWheel(Integer.parseInt(cp5.get(Textfield.class,"wheel3HRadius").getText()), 2*PI/Integer.parseInt(cp5.get(Textfield.class,"wheel3Speed").getText())));
  }
  else {
    wheels.add(new Wheel(Integer.parseInt(cp5.get(Textfield.class,"wheel3HRadius").getText()), Integer.parseInt(cp5.get(Textfield.class,"wheel3VRadius").getText()), 2*PI/Integer.parseInt(cp5.get(Textfield.class,"wheel3Speed").getText())));
  }
  
  float sy = (height+ctrlPaneHeight)/2;
  float sx = width/2;
  
  for(int i = 0; i < wheels.size(); i++) {
    Wheel currentWheel = wheels.get(i);
    float currentTheta = currentWheel.getTheta();
    float currentDiv = 2*PI/currentTheta;
    sx += currentWheel.getHRad();
    if(currentDiv > maxDiv) {
      maxDiv = currentDiv;
    }
  }
  stroke(0);
  for(int j = 0; j < maxDiv; j++) {
    float sxp = sx;
    float syp = sy;
    
    for(int i = 0; i < wheels.size(); i++) {
      float[] deltaPosition = wheels.get(i).updatePosition();
      sx += deltaPosition[0];
      sy += deltaPosition[1];
    }
    
    line(sxp, syp, sx, sy);
  }
}

class Wheel {
  float myHRadius, myVRadius, myTheta, myAngle;
  
  public Wheel() {
    myAngle = 0;
  }
  
  public Wheel(float hRadius, float vRadius, float theta) {
    myHRadius = hRadius;
    myVRadius = vRadius;
    myTheta = theta;
  }
  
  public float getHRad() {
    return myHRadius;
  }
  
  public float getVRad() {
    return myVRadius;
  }
  
  public float getTheta() {
    return myTheta;
  }
  
  public float[] updatePosition() {
    float prevAngle = myAngle;
    myAngle += myTheta;
    float[] updated = new float[2];
    updated[0] = myHRadius*(cos(myAngle) - cos(prevAngle));
    updated[1] = myVRadius*(sin(prevAngle) - sin(myAngle));
    return updated;
  }
}

class CircularWheel extends Wheel {
  public CircularWheel(float radius, float theta) {
    myHRadius = radius;
    myVRadius = radius;
    myTheta = theta;
  }
}
