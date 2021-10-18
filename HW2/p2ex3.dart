void func (String s)
{
  List <String> list = [];
  bool space = false;
  for(int i = 0; i < s.length; i++)
    {
      if (space == false)
      {
        list.add(s[i]);
      }
      if (s[i] == ' ')
        {
          space == true;
        }
      else
        {
          space == false;
        }
    }
  print(list.join());
}

void main ()
{
  func("1 2  5    6 7    ");
}