class Ball
{
  float X;
  float Y;
  float speedX;
  float speedY;

  Ball()
  {
    X = width/2;
    Y = height/2;
    speedX = 0;
    speedY = 0;
  }
  
  void Render()
  {
    ellipse(X, Y, 20, 20);
  }
  void Move()
  {
    //Redball collisions
    if (dist(RbX, RbY, X, Y)<10+10)
    {
      speedX+=2;
      speedY+=2;
      if (RbX<X)
      {
        X= X - speedX;
      }
      if (RbX>X)
      {
        X= X + speedX;
      }
      if (RbY>Y)
      {
        Y=Y-speedY;
      }
      if (RbY<Y)
      {
        Y=Y+speedY;
      }
    }
    
    //BlueBall collisions
    if (dist(BbX, BbY, X, Y)<10+10)
    {
      speedX+=2;
      speedY+=2;
      if (BbX<X)
      {
        X= X - speedX;
      }
      if (BbX>X)
      {
        X= X + speedX;
      }
      if (BbY>Y)
      {
        Y=Y-speedY;
      }
      if (BbY<Y)
      {
        Y=Y+speedY;
      }
    }
    
    //Ball Stop   
    if (dist(BbX, BbY, X, Y)>10+10)
    {
      speedX=0;
      speedY=0;
    }
    if (dist(RbX, RbY, X, Y)>10+10)
    {
      speedX=0;
      speedY=0;
    }
    
    //Goal scored
    if (X>775)
    {
      if (Y<350)
      {
        if (Y>250)
        {
          X = 400;
          Y = 300;
          BbX =675;
          BbY =300;
          RbX =125;
          RbY =300;
          ScoreRed+=1;
        }
      }
    }
    
    if (X<25)
    {
      if (Y<350)
      {
        if (Y>250)
        {
          X = 400;
          Y = 300;
          BbX =675;
          BbY =300;
          RbX =125;
          RbY =300;
          ScoreBlue+=1;
        }
      }
    }
    
    // left and right borders
    if (RbX<25)
    {
      RbX+=2;
    }
    if (BbX<25)
    {
      BbX+=2;
    }
    if (BbX>775)
    {
      BbX-=2;
    }
    if (RbX>775)
    {
      RbX-=2;
    }

    //Up and down borders 
    if (RbY>575)
    {
      RbY-=2;
    }
    if (RbY<25)
    {
      RbY+=2;
    }
    if (BbY>575)
    {
      BbY-=2;
    }
    if (BbY<25)
    {
      BbY+=2;
    }
    if (Y<25)
    {
      Y+=2;
    }
    if (Y>575)
    {
      Y-=2;
    }
  }
}
