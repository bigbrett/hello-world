#!/usr/bin/python


def test():
    file = open("out.txt","r")
    str = file.read()
    if str != "Hello, World!\n":
        print("TEST FAILED")
        return -1
    else:
        print("TEST SUCCESS")
        return 0
    
test()    
