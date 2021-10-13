String Bukvi(String s)
{
  String l = '0';
  for (int i = 0; i <= s.length; i++)
  {
    for(int z = i+1; z < s.length; z++)
    {
      if (s[z] == s[i])
      {
        l = s[z];
      }
    }
  }
  return l;
}

void main()
{
  print(Bukvi("qwertyuiopq"));
}
