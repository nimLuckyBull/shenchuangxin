type
  bgColor=enum
    blue=0x0000FF, green=0x00FF00,red=0xFF0000,magicColor="深黄色",
    combColor = ord(red) or ord(green)
echo " " , ord(bgColor.blue) or ord(bgColor.green)
echo ord(bgColor.magicColor)
echo bgColor.magicColor
echo bgColor.blue

var 
  mycolor = magicColor
  mycolor2: bgColor

#mycolor2 = "深黄色"

echo mycolor
echo ord(combColor)


