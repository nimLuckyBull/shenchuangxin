import encodings

var s = "杨汝生"


echo getCurrentEncoding()                                 #检索当前的编码, 在Unix上,总是返回“utf - 8”。

#proc open(destEncoding = "UTF-8"; srcEncoding = "CP1252"): EncodingConverter {.       #打开一个转码器，能够转换srcEncoding 到 destEncoding码。如果不能实现会引起异常。
    #raises: [OverflowError, EncodingError], tags: [].}

var convencoding: EncodingConverter
convencoding = open("GB2312","UTF-8")

#proc convert(c: EncodingConverter; s: string): string {.raises: [OSError],      #通过转码器c ，使字符串s 转换为destEncoding码， 这里假定字符串s 的编码为srcEncoding。
    #tags: [].} 

echo convert(convencoding,s)

#proc close(c: EncodingConverter) {.raises: [], tags: [].}                      #释放转换器 c 资源。

convencoding.close()

#proc convert(s: string; destEncoding = "UTF-8"; srcEncoding = "CP1252"): string {.        #转换字符串S 为destEncoding码，这里假定字符串s 的编码为srcEncoding。
    #raises: [OverflowError, EncodingError, OSError], tags: [].}      #这里打开一个转换器，使用它并再此关闭它，这样会更方便，但是也可能会是低效的与重用一个转换器相比。

echo convert(s,"GB2312","UTF-8")



#var bigunicode = open("unicodeFFFE", "UTF-8")
#echo convert(bigunicode,s)



