from ctypes import *

def main():
    test_lib = CDLL('test')
    
    # Function parameter types
    test_lib.summer.argtypes = [c_double, c_double]
    
    # Function return types
    #test_lib.summer.restype = c_float
    test_lib.summer.restype = c_double
    
    sum_res = test_lib.summer(1.0, 3.0)
    print('The sum of 1.0 and 3.0 is: %f'%sum_res)

if __name__ == '__main__':
    main()
