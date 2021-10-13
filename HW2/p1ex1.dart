int SumOfDigits(int x)
{
  int sum = 0;
  while (x>0)
    {
        sum+=x%10;
        x= x~/10;
    }
  return sum;
}

void main ()
{
  print(SumOfDigits(165));
}