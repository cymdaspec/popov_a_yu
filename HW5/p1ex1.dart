class Collections
{
  static int TimeCount = 0;
  static int sum(List <int> list)
  {
    TimeCount++;
    int Result = 0;
    for (int i = 0; i < list.length; i++)
      {
        Result += list[i];
      }
    return Result;

  }

  static int get time
  {
    return TimeCount;
  }

}


void main()
{
  print(Collections.time); //0
  print(Collections.sum([1, 2, 3, 5])); //11
  print(Collections.time); //1
  print(Collections.sum([6, 2, 5])); //13
  print(Collections.time); //2
}