from cpython.version cimport PY_VERSION_HEX

cdef extern from "sys/inotify.h":
    struct inotify_event:
        int wd, mask, cookie, len
        char name
        
    int inotify_init()
    int inotify_init1(int __flags)
    int inotify_add_watch(int __fd, char __name, int __mask) 
    int inotify_rm_watch(int __fd, int __wd)


def hello():
    print("Python Version > 3.2 {}".format(PY_VERSION_HEX > 0x030200F0))
    

if __name__ == "__main__":
    hello()