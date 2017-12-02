#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

int main(int argc, char *argv[]){
  int destinationFD;

  if(argc < 2){
    printf(1, "touch require 1 arguments [destination]\n");
    exit();
  }
  char *destination = argv[1];

  if ((destinationFD = open(destination, O_CREATE | O_WRONLY)) < 0) {
    printf(1, "CP cannot create destination file %s\n", destinationFD);
    exit();
  }

  close(destinationFD);

  exit();
}