
int SumOfThirteen(int n)
{
  int kolvo = 0;
  for (int i = 0; i < n; i++)
  {
    if (SumOfDigits(i) % 13 == 0)
    {
      kolvo++;
    }
  }
  return kolvo;
}

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

void main()
{
  print(SumOfThirteen(10000));
}