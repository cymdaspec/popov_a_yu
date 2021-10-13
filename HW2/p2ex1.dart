import 'dart:math';

double segmentLength(int x1, y1, x2, y2)
{
  int x = x2-x1;
  int y = y2-y1;
  return sqrt((x * x) + (y * y));
}

double trianglePerimetr(int x1, y1, x2, y2, x3, y3)
{
  double sum = 0;
  sum += segmentLength(x1, y1, x2, y2);
  sum += segmentLength(x2, y2, x3, y3);
  sum += segmentLength(x1, y1, x3, y3);
  return sum;
}

void main ()
{
  print(trianglePerimetr(0,0,1,1,3,4));
}