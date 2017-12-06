#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"
#include "fs.h"
//int totalRecursion = 0;
char* strcats(char* destination, char* source){
  int indexs = strlen(destination);
  int i;
  for(i=0;source[i]!=' ';indexs++,i++){
    destination[indexs]=source[i];
    destination[indexs+1]='\0';
  }
  return destination;
}
char* fmtname(char *path){
  static char buf[DIRSIZ+1];
  char *p;
  for(p=path+strlen(path); p >= path && *p != '/'; p--);
  p++;
  if(strlen(p) >= DIRSIZ){
    return p;
  }
  memmove(buf, p, strlen(p));
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  return buf;
}
int moveFile(char* source,char* destination){
  if(link(source,destination) || unlink(source)<0){
    printf(1,"mv failed to perform move operation from %s to %s\n",source,destination);
    return 0;
  }
  return 1;
}
int moveAll(char* source, char* destination){
  char buf[512], *p,tempDes[1000];
  int fd;
  struct dirent de;
  struct stat st;
  mkdir(destination);
  chdir(destination);
  if((fd = open(source, 0)) < 0){
    printf(2, "mv: cannot open %s\n", source);
    return 0;
  }

  if(fstat(fd, &st) < 0){
    printf(2, "mv: cannot stat %s\n", source);
    close(fd);
    return 0;
  }

  switch(st.type){
  case T_FILE:
    printf(1, "Move fail!\n");
    break;
  case T_DIR:
    strcpy(buf, source);
    p = buf+strlen(buf);
    *p++ = '/';
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        printf(1, "mv: cannot stat %s\n", buf);
        continue;
      }
      //printf(1, "%s %d %d %d %s\n", fmtname(buf), st.type, st.ino, st.size, buf);
      char *temp = fmtname(buf);
      //printf(1,"%d %d %s\n",strcmp(temp,"."),strcmp(temp,".."),temp);
      if(strcmp(temp,".")==32 || strcmp(temp,"..")==-14 || strcmp(temp,".")==46 || strcmp(temp,"..")==32){
        //printf(1,"Skipped %s\n",temp);
        continue;
      } 
      //printf(1,"%s\n",buf);
      strcpy(tempDes,destination);
      strcats(tempDes,"/");
      strcats(tempDes,temp);
      //printf(1,"%s\n",tempDes);
      if(st.type == T_FILE){
        moveFile(buf,tempDes);
      }else{
        moveAll(buf,tempDes);
        unlink(buf);
        //rmdir(buf);
      }
    }
    break;
  }
  close(fd);
  return 1;
}
int main(int argc, char *argv[]){
  

  if(argc < 3){
    printf(1, "MV require atleast 3 arguments [src] [destination]\n");
    exit();
  }else if(argc > 3){
    if(argv[1][0] == '*'){
      if(moveAll(argv[2],argv[3])<=0){
        printf(1,"Unable to perform mv * operation!\n");
      }
    }else{
      printf(1,"Unknown command!\n");
      return 0;
    }
  }else{
    if(moveFile(argv[1],argv[2])<=0){
      printf(1,"Failed to perform move operation!\n");
    }
  }
  printf(1,"FInished current Operation!\n");

  exit();
}
