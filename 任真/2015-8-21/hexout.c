void HexOutput(const char* buf, int len)
{   
    int i;
    printf("The Hex output of data :\n\t0x");
    for(i=len-1; i>=0; --i)
    {
        unsigned char c = buf[i]; // must use unsigned char to print >128 value
        printf("%x", c);
    }
    printf("\n");
}

