// written by benaryorg @ gist

#include <stdio.h>
#include <assert.h>
#include <fcntl.h>
#include <sys/mman.h>

int main(int argc, char **argv)
{
    assert(argc == 2);
    int file = open(argv[1], O_RDONLY);
    assert(file > 0);
    struct stat st;
    fstat(file, &st);
    void *addr = mmap((void *)0xffffffff00000000, st.st_size, PROT_READ, MAP_PRIVATE, file, 0);
    assert(addr);
    fwrite(addr, st.st_size, 1, stdout);
    munmap(addr, st.st_size);
    close(file);
    return 0;
}