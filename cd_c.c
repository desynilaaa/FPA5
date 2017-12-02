#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

int main(int argc, char *argv[]){
  printf(1,"this cd implementation is actually working for its children!\n");
  if(argc<2){
    printf(1,"cd need atleast 1 argument [destination]\n");
    exit();
  }  

  if(chdir(argv[1])<0){
    printf(1,"Failed to change directory to %s!\n",argv[1]);
  }
  exit();
}