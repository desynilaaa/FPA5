#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"
#include "fs.h"

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

int cpFile(char* source, char* destination){
	char buf[10000];
	int sourceFD, destinationFD, in,out;

	

	if ((sourceFD = open(source, O_RDONLY)) < 0) {
		printf(2, "CP cannot open source file %s\n", sourceFD);
		return 0;
	}
	if ((destinationFD = open(destination, O_CREATE | O_WRONLY)) < 0) {
		printf(2, "CP cannot create destination file %s\n", destinationFD);
		return 0;
	}

	while ((in = read(sourceFD, buf, sizeof(buf))) > 0) {
		//printf(1,"%c",in);
	out = write(destinationFD, buf, in);
	if (out < 0){ 
	 	break;
		}
	}
	//printf(1,"END OF CP %d\n",in);
	close(sourceFD);
	close(destinationFD);
	return 1;
}
int cpAll(char* source, char* destination, int mode){
char buf[512], *p,tempDes[1000];
	int fd;
	struct dirent de;
	struct stat st;
	mkdir(destination);
	chdir(destination);
	if((fd = open(source, 0)) < 0){
		printf(2, "cp: cannot open %s\n", source);
		return 0;
	}

	if(fstat(fd, &st) < 0){
		printf(2, "cp: cannot stat %s\n", source);
		close(fd);
		return 0;
	}

	switch(st.type){
		case T_FILE:
			printf(2, "CP fail!\n");
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
				printf(1, "cp: cannot stat %s\n", buf);
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
				cpFile(buf,tempDes);
			}else if(mode == 1){
				cpAll(buf,tempDes,mode);
			}
		}
		break;
	}
	close(fd);
	return 1;
}
int main(int argc, char *argv[]){
  
	if(argc < 3){
	printf(2, "CP require 2 arguments [src] [destination]\n");
		exit();
	}
	if(strcmp(argv[1],"-R")==0){
		if(cpAll(argv[2],argv[3],1)<1){
			printf(2,"Error performing cp -R operation!\n");
		}
	}else if(strcmp(argv[1],"*")==0){
		if(cpAll(argv[2],argv[3],0)<1){
			printf(2,"Error performing cp * operation!\n");
		}
	}else{
		if(cpFile(argv[1],argv[2])<1){
			printf(2,"Error copying file!\n");
		}
	}
 	exit();
}