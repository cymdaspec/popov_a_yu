void BinFraction(double x, int n)
{
  List <int> s = [];
  for (int i = 0; i < 10; i++)
    {
      x*=2;
      s.add(x.toInt());
      x -= x.toInt();
    }
  print(s.join());
}

void main()
{
  BinFraction(0.1, 10);
}