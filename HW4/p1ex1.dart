class Vector2D
{
    double vX = 0;
    double vY = 0;

    Vector2D([this.vX = 1.0, this.vY = 1.0]) //1
    {
    }


    Vector2D.FromVector(Vector2D v) //2
    {
      vX = v.vX;
      vY = v.vY;
    }

    void display()
    {
      print("$vX $vY");
    }
}

void main()
{
  Vector2D v1 = Vector2D();
  Vector2D v2 = Vector2D(8.12, 45.56);
  Vector2D v3 = Vector2D.FromVector(v2);
  v1.display();
  v2.display();
  v3.display();
}