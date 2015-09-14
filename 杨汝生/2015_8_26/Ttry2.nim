import strutils

let x = try: parseInt("133a")
        except: -1
        finally: echo "hi"

echo x

let y = (try: parseInt("133a") except: -1)
#let y = (try: parseInt("133a") 
                    #except: -1)                                   #解析限制,如果try 跟在( 后面，则语句得写在一行。
echo y