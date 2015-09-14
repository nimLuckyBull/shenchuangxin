type
  Direction = enum
    north, east, south, west
  BlinkLights = enum
    off, on, slowBlink, mediumBlink, fastBlink
  LevelSetting = array[north..west, BlinkLights]
type
  LightTower = array[1..10, LevelSetting]
  LightTower = array[1..10, array[north..west, BlinkLights]] #����һ�ֶ����ά����ķ�ʽ
var
  tower: LightTower
  meiju: Direction
tower[1][north] = slowBlink
tower[1][east] = mediumBlink
#meiju = north #����ͨ��
#meiju = 1 #���Ͳ�ƥ�䣬���ܽ��и�ֵ
#meiju = "hello" #���Ͳ�ƥ�䣬���ܽ��и�ֵ
echo ($meiju & "  here")
echo len(tower)     # --> 10
echo len(tower[1])  # --> 4���˴���ʾ����tower[1]�����������ĸ�Ԫ�ء�������C�����еĶ�ά���� 
echo repr(tower)    # --> [[slowBlink, mediumBlink, ...more output..���˴��������40��Ԫ�أ�4��Ԫ��һ�顣
# The following lines don't compile due to type mismatch errors
#tower[north][east] = on #���Ͳ�ƥ��
#tower[0][1] = on #tower���±��1��ʼ�ģ����Ա������
#tower[1][1] = on #�����������ĵڶ���ά���±������ö�����������ֵ
#tower[1][west] = on #����ͨ��
#tower[1][west] = 2 #����������ܰ�����2����tower�е�ĳ��Ԫ��