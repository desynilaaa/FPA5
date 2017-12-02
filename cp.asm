
_cp:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
		break;
	}
	close(fd);
	return 1;
}
int main(int argc, char *argv[]){
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
  
	if(argc < 3){
   f:	83 39 02             	cmpl   $0x2,(%ecx)
		break;
	}
	close(fd);
	return 1;
}
int main(int argc, char *argv[]){
  12:	8b 59 04             	mov    0x4(%ecx),%ebx
  
	if(argc < 3){
  15:	7f 13                	jg     2a <main+0x2a>
	printf(2, "CP require 2 arguments [src] [destination]\n");
  17:	50                   	push   %eax
  18:	50                   	push   %eax
  19:	68 38 0c 00 00       	push   $0xc38
  1e:	6a 02                	push   $0x2
  20:	e8 ab 08 00 00       	call   8d0 <printf>
		exit();
  25:	e8 58 07 00 00       	call   782 <exit>
	}
	if(strcmp(argv[1],"-R")==0){
  2a:	50                   	push   %eax
  2b:	50                   	push   %eax
  2c:	68 e3 0c 00 00       	push   $0xce3
  31:	ff 73 04             	pushl  0x4(%ebx)
  34:	e8 37 05 00 00       	call   570 <strcmp>
  39:	83 c4 10             	add    $0x10,%esp
  3c:	85 c0                	test   %eax,%eax
  3e:	75 1a                	jne    5a <main+0x5a>
		if(cpAll(argv[2],argv[3],1)<1){
  40:	50                   	push   %eax
  41:	6a 01                	push   $0x1
  43:	ff 73 0c             	pushl  0xc(%ebx)
  46:	ff 73 08             	pushl  0x8(%ebx)
  49:	e8 52 02 00 00       	call   2a0 <cpAll>
  4e:	83 c4 10             	add    $0x10,%esp
  51:	85 c0                	test   %eax,%eax
  53:	7e 6a                	jle    bf <main+0xbf>
	}else{
		if(cpFile(argv[1],argv[2])<1){
			printf(2,"Error copying file!\n");
		}
	}
 	exit();
  55:	e8 28 07 00 00       	call   782 <exit>
	}
	if(strcmp(argv[1],"-R")==0){
		if(cpAll(argv[2],argv[3],1)<1){
			printf(2,"Error performing cp -R operation!\n");
		}
	}else if(strcmp(argv[1],"*")==0){
  5a:	50                   	push   %eax
  5b:	50                   	push   %eax
  5c:	68 e6 0c 00 00       	push   $0xce6
  61:	ff 73 04             	pushl  0x4(%ebx)
  64:	e8 07 05 00 00       	call   570 <strcmp>
  69:	83 c4 10             	add    $0x10,%esp
  6c:	85 c0                	test   %eax,%eax
  6e:	75 28                	jne    98 <main+0x98>
		if(cpAll(argv[2],argv[3],0)<1){
  70:	50                   	push   %eax
  71:	6a 00                	push   $0x0
  73:	ff 73 0c             	pushl  0xc(%ebx)
  76:	ff 73 08             	pushl  0x8(%ebx)
  79:	e8 22 02 00 00       	call   2a0 <cpAll>
  7e:	83 c4 10             	add    $0x10,%esp
  81:	85 c0                	test   %eax,%eax
  83:	7f d0                	jg     55 <main+0x55>
			printf(2,"Error performing cp * operation!\n");
  85:	51                   	push   %ecx
  86:	51                   	push   %ecx
  87:	68 88 0c 00 00       	push   $0xc88
  8c:	6a 02                	push   $0x2
  8e:	e8 3d 08 00 00       	call   8d0 <printf>
  93:	83 c4 10             	add    $0x10,%esp
  96:	eb bd                	jmp    55 <main+0x55>
		}
	}else{
		if(cpFile(argv[1],argv[2])<1){
  98:	52                   	push   %edx
  99:	52                   	push   %edx
  9a:	ff 73 08             	pushl  0x8(%ebx)
  9d:	ff 73 04             	pushl  0x4(%ebx)
  a0:	e8 2b 01 00 00       	call   1d0 <cpFile>
  a5:	83 c4 10             	add    $0x10,%esp
  a8:	85 c0                	test   %eax,%eax
  aa:	7f a9                	jg     55 <main+0x55>
			printf(2,"Error copying file!\n");
  ac:	50                   	push   %eax
  ad:	50                   	push   %eax
  ae:	68 e8 0c 00 00       	push   $0xce8
  b3:	6a 02                	push   $0x2
  b5:	e8 16 08 00 00       	call   8d0 <printf>
  ba:	83 c4 10             	add    $0x10,%esp
  bd:	eb 96                	jmp    55 <main+0x55>
	printf(2, "CP require 2 arguments [src] [destination]\n");
		exit();
	}
	if(strcmp(argv[1],"-R")==0){
		if(cpAll(argv[2],argv[3],1)<1){
			printf(2,"Error performing cp -R operation!\n");
  bf:	50                   	push   %eax
  c0:	50                   	push   %eax
  c1:	68 64 0c 00 00       	push   $0xc64
  c6:	6a 02                	push   $0x2
  c8:	e8 03 08 00 00       	call   8d0 <printf>
  cd:	83 c4 10             	add    $0x10,%esp
  d0:	eb 83                	jmp    55 <main+0x55>
  d2:	66 90                	xchg   %ax,%ax
  d4:	66 90                	xchg   %ax,%ax
  d6:	66 90                	xchg   %ax,%ax
  d8:	66 90                	xchg   %ax,%ax
  da:	66 90                	xchg   %ax,%ax
  dc:	66 90                	xchg   %ax,%ax
  de:	66 90                	xchg   %ax,%ax

000000e0 <strcats>:
#include "stat.h"
#include "user.h"
#include "fcntl.h"
#include "fs.h"

char* strcats(char* destination, char* source){
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	56                   	push   %esi
  e4:	53                   	push   %ebx
  e5:	8b 75 08             	mov    0x8(%ebp),%esi
  e8:	8b 5d 0c             	mov    0xc(%ebp),%ebx
	int indexs = strlen(destination);
  eb:	83 ec 0c             	sub    $0xc,%esp
  ee:	56                   	push   %esi
  ef:	83 c3 01             	add    $0x1,%ebx
  f2:	e8 c9 04 00 00       	call   5c0 <strlen>
	int i;
	for(i=0;source[i]!=' ';indexs++,i++){
  f7:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
  fb:	83 c4 10             	add    $0x10,%esp
  fe:	01 f0                	add    %esi,%eax
 100:	80 fa 20             	cmp    $0x20,%dl
 103:	74 18                	je     11d <strcats+0x3d>
 105:	8d 76 00             	lea    0x0(%esi),%esi
		destination[indexs]=source[i];
 108:	88 10                	mov    %dl,(%eax)
		destination[indexs+1]='\0';
 10a:	c6 40 01 00          	movb   $0x0,0x1(%eax)
 10e:	83 c3 01             	add    $0x1,%ebx
#include "fs.h"

char* strcats(char* destination, char* source){
	int indexs = strlen(destination);
	int i;
	for(i=0;source[i]!=' ';indexs++,i++){
 111:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 115:	83 c0 01             	add    $0x1,%eax
 118:	80 fa 20             	cmp    $0x20,%dl
 11b:	75 eb                	jne    108 <strcats+0x28>
		destination[indexs]=source[i];
		destination[indexs+1]='\0';
	}
	return destination;
}
 11d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 120:	89 f0                	mov    %esi,%eax
 122:	5b                   	pop    %ebx
 123:	5e                   	pop    %esi
 124:	5d                   	pop    %ebp
 125:	c3                   	ret    
 126:	8d 76 00             	lea    0x0(%esi),%esi
 129:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000130 <fmtname>:
char* fmtname(char *path){
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	56                   	push   %esi
 134:	53                   	push   %ebx
 135:	8b 5d 08             	mov    0x8(%ebp),%ebx
	static char buf[DIRSIZ+1];
	char *p;
	for(p=path+strlen(path); p >= path && *p != '/'; p--);
 138:	83 ec 0c             	sub    $0xc,%esp
 13b:	53                   	push   %ebx
 13c:	e8 7f 04 00 00       	call   5c0 <strlen>
 141:	83 c4 10             	add    $0x10,%esp
 144:	01 d8                	add    %ebx,%eax
 146:	73 0f                	jae    157 <fmtname+0x27>
 148:	eb 12                	jmp    15c <fmtname+0x2c>
 14a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 150:	83 e8 01             	sub    $0x1,%eax
 153:	39 c3                	cmp    %eax,%ebx
 155:	77 05                	ja     15c <fmtname+0x2c>
 157:	80 38 2f             	cmpb   $0x2f,(%eax)
 15a:	75 f4                	jne    150 <fmtname+0x20>
	p++;
 15c:	8d 58 01             	lea    0x1(%eax),%ebx
	if(strlen(p) >= DIRSIZ){
 15f:	83 ec 0c             	sub    $0xc,%esp
 162:	53                   	push   %ebx
 163:	e8 58 04 00 00       	call   5c0 <strlen>
 168:	83 c4 10             	add    $0x10,%esp
 16b:	83 f8 0d             	cmp    $0xd,%eax
 16e:	77 4a                	ja     1ba <fmtname+0x8a>
		return p;
	}
	memmove(buf, p, strlen(p));
 170:	83 ec 0c             	sub    $0xc,%esp
 173:	53                   	push   %ebx
 174:	e8 47 04 00 00       	call   5c0 <strlen>
 179:	83 c4 0c             	add    $0xc,%esp
 17c:	50                   	push   %eax
 17d:	53                   	push   %ebx
 17e:	68 70 10 00 00       	push   $0x1070
 183:	e8 c8 05 00 00       	call   750 <memmove>
	memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
 188:	89 1c 24             	mov    %ebx,(%esp)
 18b:	e8 30 04 00 00       	call   5c0 <strlen>
 190:	89 1c 24             	mov    %ebx,(%esp)
 193:	89 c6                	mov    %eax,%esi
	return buf;
 195:	bb 70 10 00 00       	mov    $0x1070,%ebx
	p++;
	if(strlen(p) >= DIRSIZ){
		return p;
	}
	memmove(buf, p, strlen(p));
	memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
 19a:	e8 21 04 00 00       	call   5c0 <strlen>
 19f:	ba 0e 00 00 00       	mov    $0xe,%edx
 1a4:	83 c4 0c             	add    $0xc,%esp
 1a7:	05 70 10 00 00       	add    $0x1070,%eax
 1ac:	29 f2                	sub    %esi,%edx
 1ae:	52                   	push   %edx
 1af:	6a 20                	push   $0x20
 1b1:	50                   	push   %eax
 1b2:	e8 39 04 00 00       	call   5f0 <memset>
	return buf;
 1b7:	83 c4 10             	add    $0x10,%esp
}
 1ba:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1bd:	89 d8                	mov    %ebx,%eax
 1bf:	5b                   	pop    %ebx
 1c0:	5e                   	pop    %esi
 1c1:	5d                   	pop    %ebp
 1c2:	c3                   	ret    
 1c3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000001d0 <cpFile>:

int cpFile(char* source, char* destination){
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	57                   	push   %edi
 1d4:	56                   	push   %esi
 1d5:	53                   	push   %ebx
 1d6:	81 ec 24 27 00 00    	sub    $0x2724,%esp
	char buf[10000];
	int sourceFD, destinationFD, in,out;

	

	if ((sourceFD = open(source, O_RDONLY)) < 0) {
 1dc:	6a 00                	push   $0x0
 1de:	ff 75 08             	pushl  0x8(%ebp)
 1e1:	e8 dc 05 00 00       	call   7c2 <open>
 1e6:	83 c4 10             	add    $0x10,%esp
 1e9:	85 c0                	test   %eax,%eax
 1eb:	89 c6                	mov    %eax,%esi
 1ed:	78 71                	js     260 <cpFile+0x90>
		printf(2, "CP cannot open source file %s\n", sourceFD);
		return 0;
	}
	if ((destinationFD = open(destination, O_CREATE | O_WRONLY)) < 0) {
 1ef:	83 ec 08             	sub    $0x8,%esp
 1f2:	8d 9d d8 d8 ff ff    	lea    -0x2728(%ebp),%ebx
 1f8:	68 01 02 00 00       	push   $0x201
 1fd:	ff 75 0c             	pushl  0xc(%ebp)
 200:	e8 bd 05 00 00       	call   7c2 <open>
 205:	83 c4 10             	add    $0x10,%esp
 208:	85 c0                	test   %eax,%eax
 20a:	89 c7                	mov    %eax,%edi
 20c:	79 14                	jns    222 <cpFile+0x52>
 20e:	eb 6d                	jmp    27d <cpFile+0xad>
		return 0;
	}

	while ((in = read(sourceFD, buf, sizeof(buf))) > 0) {
		//printf(1,"%c",in);
	out = write(destinationFD, buf, in);
 210:	83 ec 04             	sub    $0x4,%esp
 213:	50                   	push   %eax
 214:	53                   	push   %ebx
 215:	57                   	push   %edi
 216:	e8 87 05 00 00       	call   7a2 <write>
	if (out < 0){ 
 21b:	83 c4 10             	add    $0x10,%esp
 21e:	85 c0                	test   %eax,%eax
 220:	78 16                	js     238 <cpFile+0x68>
	if ((destinationFD = open(destination, O_CREATE | O_WRONLY)) < 0) {
		printf(2, "CP cannot create destination file %s\n", destinationFD);
		return 0;
	}

	while ((in = read(sourceFD, buf, sizeof(buf))) > 0) {
 222:	83 ec 04             	sub    $0x4,%esp
 225:	68 10 27 00 00       	push   $0x2710
 22a:	53                   	push   %ebx
 22b:	56                   	push   %esi
 22c:	e8 69 05 00 00       	call   79a <read>
 231:	83 c4 10             	add    $0x10,%esp
 234:	85 c0                	test   %eax,%eax
 236:	7f d8                	jg     210 <cpFile+0x40>
	if (out < 0){ 
	 	break;
		}
	}
	//printf(1,"END OF CP %d\n",in);
	close(sourceFD);
 238:	83 ec 0c             	sub    $0xc,%esp
 23b:	56                   	push   %esi
 23c:	e8 69 05 00 00       	call   7aa <close>
	close(destinationFD);
 241:	89 3c 24             	mov    %edi,(%esp)
 244:	e8 61 05 00 00       	call   7aa <close>
	return 1;
 249:	83 c4 10             	add    $0x10,%esp
 24c:	b8 01 00 00 00       	mov    $0x1,%eax
}
 251:	8d 65 f4             	lea    -0xc(%ebp),%esp
 254:	5b                   	pop    %ebx
 255:	5e                   	pop    %esi
 256:	5f                   	pop    %edi
 257:	5d                   	pop    %ebp
 258:	c3                   	ret    
 259:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	int sourceFD, destinationFD, in,out;

	

	if ((sourceFD = open(source, O_RDONLY)) < 0) {
		printf(2, "CP cannot open source file %s\n", sourceFD);
 260:	83 ec 04             	sub    $0x4,%esp
 263:	50                   	push   %eax
 264:	68 f0 0b 00 00       	push   $0xbf0
 269:	6a 02                	push   $0x2
 26b:	e8 60 06 00 00       	call   8d0 <printf>
		return 0;
 270:	83 c4 10             	add    $0x10,%esp
	}
	//printf(1,"END OF CP %d\n",in);
	close(sourceFD);
	close(destinationFD);
	return 1;
}
 273:	8d 65 f4             	lea    -0xc(%ebp),%esp

	

	if ((sourceFD = open(source, O_RDONLY)) < 0) {
		printf(2, "CP cannot open source file %s\n", sourceFD);
		return 0;
 276:	31 c0                	xor    %eax,%eax
	}
	//printf(1,"END OF CP %d\n",in);
	close(sourceFD);
	close(destinationFD);
	return 1;
}
 278:	5b                   	pop    %ebx
 279:	5e                   	pop    %esi
 27a:	5f                   	pop    %edi
 27b:	5d                   	pop    %ebp
 27c:	c3                   	ret    
	if ((sourceFD = open(source, O_RDONLY)) < 0) {
		printf(2, "CP cannot open source file %s\n", sourceFD);
		return 0;
	}
	if ((destinationFD = open(destination, O_CREATE | O_WRONLY)) < 0) {
		printf(2, "CP cannot create destination file %s\n", destinationFD);
 27d:	83 ec 04             	sub    $0x4,%esp
 280:	50                   	push   %eax
 281:	68 10 0c 00 00       	push   $0xc10
 286:	6a 02                	push   $0x2
 288:	e8 43 06 00 00       	call   8d0 <printf>
		return 0;
 28d:	83 c4 10             	add    $0x10,%esp
 290:	31 c0                	xor    %eax,%eax
 292:	eb bd                	jmp    251 <cpFile+0x81>
 294:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 29a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000002a0 <cpAll>:
	//printf(1,"END OF CP %d\n",in);
	close(sourceFD);
	close(destinationFD);
	return 1;
}
int cpAll(char* source, char* destination, int mode){
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	57                   	push   %edi
 2a4:	56                   	push   %esi
 2a5:	53                   	push   %ebx
 2a6:	81 ec 38 06 00 00    	sub    $0x638,%esp
char buf[512], *p,tempDes[1000];
	int fd;
	struct dirent de;
	struct stat st;
	mkdir(destination);
 2ac:	ff 75 0c             	pushl  0xc(%ebp)
	//printf(1,"END OF CP %d\n",in);
	close(sourceFD);
	close(destinationFD);
	return 1;
}
int cpAll(char* source, char* destination, int mode){
 2af:	8b 75 08             	mov    0x8(%ebp),%esi
char buf[512], *p,tempDes[1000];
	int fd;
	struct dirent de;
	struct stat st;
	mkdir(destination);
 2b2:	e8 33 05 00 00       	call   7ea <mkdir>
	chdir(destination);
 2b7:	59                   	pop    %ecx
 2b8:	ff 75 0c             	pushl  0xc(%ebp)
 2bb:	e8 32 05 00 00       	call   7f2 <chdir>
	if((fd = open(source, 0)) < 0){
 2c0:	5b                   	pop    %ebx
 2c1:	5f                   	pop    %edi
 2c2:	6a 00                	push   $0x0
 2c4:	56                   	push   %esi
 2c5:	e8 f8 04 00 00       	call   7c2 <open>
 2ca:	83 c4 10             	add    $0x10,%esp
 2cd:	85 c0                	test   %eax,%eax
 2cf:	0f 88 0b 02 00 00    	js     4e0 <cpAll+0x240>
 2d5:	89 c3                	mov    %eax,%ebx
		printf(2, "cp: cannot open %s\n", source);
		return 0;
	}

	if(fstat(fd, &st) < 0){
 2d7:	8d 85 ec f9 ff ff    	lea    -0x614(%ebp),%eax
 2dd:	83 ec 08             	sub    $0x8,%esp
 2e0:	50                   	push   %eax
 2e1:	53                   	push   %ebx
 2e2:	e8 f3 04 00 00       	call   7da <fstat>
 2e7:	83 c4 10             	add    $0x10,%esp
 2ea:	85 c0                	test   %eax,%eax
 2ec:	0f 88 0e 02 00 00    	js     500 <cpAll+0x260>
		printf(2, "cp: cannot stat %s\n", source);
		close(fd);
		return 0;
	}

	switch(st.type){
 2f2:	0f b7 85 ec f9 ff ff 	movzwl -0x614(%ebp),%eax
 2f9:	66 83 f8 01          	cmp    $0x1,%ax
 2fd:	74 31                	je     330 <cpAll+0x90>
 2ff:	66 83 f8 02          	cmp    $0x2,%ax
 303:	75 12                	jne    317 <cpAll+0x77>
		case T_FILE:
			printf(2, "CP fail!\n");
 305:	83 ec 08             	sub    $0x8,%esp
 308:	68 d4 0c 00 00       	push   $0xcd4
 30d:	6a 02                	push   $0x2
 30f:	e8 bc 05 00 00       	call   8d0 <printf>
			break;
 314:	83 c4 10             	add    $0x10,%esp
				cpAll(buf,tempDes,mode);
			}
		}
		break;
	}
	close(fd);
 317:	83 ec 0c             	sub    $0xc,%esp
 31a:	53                   	push   %ebx
 31b:	e8 8a 04 00 00       	call   7aa <close>
	return 1;
 320:	83 c4 10             	add    $0x10,%esp
 323:	b8 01 00 00 00       	mov    $0x1,%eax
}
 328:	8d 65 f4             	lea    -0xc(%ebp),%esp
 32b:	5b                   	pop    %ebx
 32c:	5e                   	pop    %esi
 32d:	5f                   	pop    %edi
 32e:	5d                   	pop    %ebp
 32f:	c3                   	ret    
	switch(st.type){
		case T_FILE:
			printf(2, "CP fail!\n");
			break;
		case T_DIR:
			strcpy(buf, source);
 330:	8d bd 00 fa ff ff    	lea    -0x600(%ebp),%edi
 336:	83 ec 08             	sub    $0x8,%esp
 339:	56                   	push   %esi
 33a:	8d b5 dc f9 ff ff    	lea    -0x624(%ebp),%esi
 340:	57                   	push   %edi
 341:	e8 fa 01 00 00       	call   540 <strcpy>
			p = buf+strlen(buf);
 346:	89 3c 24             	mov    %edi,(%esp)
 349:	e8 72 02 00 00       	call   5c0 <strlen>
 34e:	8d 14 07             	lea    (%edi,%eax,1),%edx
			*p++ = '/';
 351:	8d 44 07 01          	lea    0x1(%edi,%eax,1),%eax
		while(read(fd, &de, sizeof(de)) == sizeof(de)){
 355:	83 c4 10             	add    $0x10,%esp
		case T_FILE:
			printf(2, "CP fail!\n");
			break;
		case T_DIR:
			strcpy(buf, source);
			p = buf+strlen(buf);
 358:	89 95 d0 f9 ff ff    	mov    %edx,-0x630(%ebp)
			*p++ = '/';
 35e:	89 85 cc f9 ff ff    	mov    %eax,-0x634(%ebp)
 364:	c6 02 2f             	movb   $0x2f,(%edx)
 367:	89 f6                	mov    %esi,%esi
 369:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
		while(read(fd, &de, sizeof(de)) == sizeof(de)){
 370:	83 ec 04             	sub    $0x4,%esp
 373:	6a 10                	push   $0x10
 375:	56                   	push   %esi
 376:	53                   	push   %ebx
 377:	e8 1e 04 00 00       	call   79a <read>
 37c:	83 c4 10             	add    $0x10,%esp
 37f:	83 f8 10             	cmp    $0x10,%eax
 382:	75 93                	jne    317 <cpAll+0x77>
			if(de.inum == 0)
 384:	66 83 bd dc f9 ff ff 	cmpw   $0x0,-0x624(%ebp)
 38b:	00 
 38c:	74 e2                	je     370 <cpAll+0xd0>
				continue;
			memmove(p, de.name, DIRSIZ);
 38e:	8d 85 de f9 ff ff    	lea    -0x622(%ebp),%eax
 394:	83 ec 04             	sub    $0x4,%esp
 397:	6a 0e                	push   $0xe
 399:	50                   	push   %eax
 39a:	ff b5 cc f9 ff ff    	pushl  -0x634(%ebp)
 3a0:	e8 ab 03 00 00       	call   750 <memmove>
			p[DIRSIZ] = 0;
 3a5:	8b 85 d0 f9 ff ff    	mov    -0x630(%ebp),%eax
 3ab:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
			if(stat(buf, &st) < 0){
 3af:	58                   	pop    %eax
 3b0:	8d 85 ec f9 ff ff    	lea    -0x614(%ebp),%eax
 3b6:	5a                   	pop    %edx
 3b7:	50                   	push   %eax
 3b8:	57                   	push   %edi
 3b9:	e8 02 03 00 00       	call   6c0 <stat>
 3be:	83 c4 10             	add    $0x10,%esp
 3c1:	85 c0                	test   %eax,%eax
 3c3:	0f 88 f7 00 00 00    	js     4c0 <cpAll+0x220>
				printf(1, "cp: cannot stat %s\n", buf);
				continue;
			}
		//printf(1, "%s %d %d %d %s\n", fmtname(buf), st.type, st.ino, st.size, buf);
			char *temp = fmtname(buf);
 3c9:	83 ec 0c             	sub    $0xc,%esp
 3cc:	57                   	push   %edi
 3cd:	e8 5e fd ff ff       	call   130 <fmtname>
		//printf(1,"%d %d %s\n",strcmp(temp,"."),strcmp(temp,".."),temp);
			if(strcmp(temp,".")==32 || strcmp(temp,"..")==-14 || strcmp(temp,".")==46 || strcmp(temp,"..")==32){
 3d2:	5a                   	pop    %edx
 3d3:	59                   	pop    %ecx
 3d4:	68 df 0c 00 00       	push   $0xcdf
 3d9:	50                   	push   %eax
 3da:	89 85 d4 f9 ff ff    	mov    %eax,-0x62c(%ebp)
 3e0:	e8 8b 01 00 00       	call   570 <strcmp>
 3e5:	83 c4 10             	add    $0x10,%esp
 3e8:	83 f8 20             	cmp    $0x20,%eax
 3eb:	74 83                	je     370 <cpAll+0xd0>
 3ed:	83 ec 08             	sub    $0x8,%esp
 3f0:	68 de 0c 00 00       	push   $0xcde
 3f5:	ff b5 d4 f9 ff ff    	pushl  -0x62c(%ebp)
 3fb:	e8 70 01 00 00       	call   570 <strcmp>
 400:	83 c4 10             	add    $0x10,%esp
 403:	83 f8 f2             	cmp    $0xfffffff2,%eax
 406:	0f 84 64 ff ff ff    	je     370 <cpAll+0xd0>
 40c:	83 ec 08             	sub    $0x8,%esp
 40f:	68 df 0c 00 00       	push   $0xcdf
 414:	ff b5 d4 f9 ff ff    	pushl  -0x62c(%ebp)
 41a:	e8 51 01 00 00       	call   570 <strcmp>
 41f:	83 c4 10             	add    $0x10,%esp
 422:	83 f8 2e             	cmp    $0x2e,%eax
 425:	0f 84 45 ff ff ff    	je     370 <cpAll+0xd0>
 42b:	83 ec 08             	sub    $0x8,%esp
 42e:	68 de 0c 00 00       	push   $0xcde
 433:	ff b5 d4 f9 ff ff    	pushl  -0x62c(%ebp)
 439:	e8 32 01 00 00       	call   570 <strcmp>
 43e:	83 c4 10             	add    $0x10,%esp
 441:	83 f8 20             	cmp    $0x20,%eax
 444:	0f 84 26 ff ff ff    	je     370 <cpAll+0xd0>
		//printf(1,"Skipped %s\n",temp);
				continue;
			} 
		//printf(1,"%s\n",buf);
			strcpy(tempDes,destination);
 44a:	8d 8d 00 fc ff ff    	lea    -0x400(%ebp),%ecx
 450:	83 ec 08             	sub    $0x8,%esp
 453:	ff 75 0c             	pushl  0xc(%ebp)
 456:	51                   	push   %ecx
 457:	e8 e4 00 00 00       	call   540 <strcpy>
			strcats(tempDes,"/");
 45c:	58                   	pop    %eax
 45d:	8d 8d 00 fc ff ff    	lea    -0x400(%ebp),%ecx
 463:	5a                   	pop    %edx
 464:	68 e1 0c 00 00       	push   $0xce1
 469:	51                   	push   %ecx
 46a:	e8 71 fc ff ff       	call   e0 <strcats>
			strcats(tempDes,temp);
 46f:	59                   	pop    %ecx
 470:	58                   	pop    %eax
 471:	8d 85 00 fc ff ff    	lea    -0x400(%ebp),%eax
 477:	ff b5 d4 f9 ff ff    	pushl  -0x62c(%ebp)
 47d:	50                   	push   %eax
 47e:	e8 5d fc ff ff       	call   e0 <strcats>
			//printf(1,"%s\n",tempDes);
			if(st.type == T_FILE){
 483:	83 c4 10             	add    $0x10,%esp
 486:	66 83 bd ec f9 ff ff 	cmpw   $0x2,-0x614(%ebp)
 48d:	02 
 48e:	0f 84 8e 00 00 00    	je     522 <cpAll+0x282>
				cpFile(buf,tempDes);
			}else if(mode == 1){
 494:	83 7d 10 01          	cmpl   $0x1,0x10(%ebp)
 498:	0f 85 d2 fe ff ff    	jne    370 <cpAll+0xd0>
				cpAll(buf,tempDes,mode);
 49e:	8d 85 00 fc ff ff    	lea    -0x400(%ebp),%eax
 4a4:	83 ec 04             	sub    $0x4,%esp
 4a7:	6a 01                	push   $0x1
 4a9:	50                   	push   %eax
 4aa:	57                   	push   %edi
 4ab:	e8 f0 fd ff ff       	call   2a0 <cpAll>
 4b0:	83 c4 10             	add    $0x10,%esp
 4b3:	e9 b8 fe ff ff       	jmp    370 <cpAll+0xd0>
 4b8:	90                   	nop
 4b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
			if(de.inum == 0)
				continue;
			memmove(p, de.name, DIRSIZ);
			p[DIRSIZ] = 0;
			if(stat(buf, &st) < 0){
				printf(1, "cp: cannot stat %s\n", buf);
 4c0:	83 ec 04             	sub    $0x4,%esp
 4c3:	57                   	push   %edi
 4c4:	68 c0 0c 00 00       	push   $0xcc0
 4c9:	6a 01                	push   $0x1
 4cb:	e8 00 04 00 00       	call   8d0 <printf>
				continue;
 4d0:	83 c4 10             	add    $0x10,%esp
 4d3:	e9 98 fe ff ff       	jmp    370 <cpAll+0xd0>
 4d8:	90                   	nop
 4d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	struct dirent de;
	struct stat st;
	mkdir(destination);
	chdir(destination);
	if((fd = open(source, 0)) < 0){
		printf(2, "cp: cannot open %s\n", source);
 4e0:	83 ec 04             	sub    $0x4,%esp
 4e3:	56                   	push   %esi
 4e4:	68 ac 0c 00 00       	push   $0xcac
 4e9:	6a 02                	push   $0x2
 4eb:	e8 e0 03 00 00       	call   8d0 <printf>
		return 0;
 4f0:	83 c4 10             	add    $0x10,%esp
		}
		break;
	}
	close(fd);
	return 1;
}
 4f3:	8d 65 f4             	lea    -0xc(%ebp),%esp
	struct stat st;
	mkdir(destination);
	chdir(destination);
	if((fd = open(source, 0)) < 0){
		printf(2, "cp: cannot open %s\n", source);
		return 0;
 4f6:	31 c0                	xor    %eax,%eax
		}
		break;
	}
	close(fd);
	return 1;
}
 4f8:	5b                   	pop    %ebx
 4f9:	5e                   	pop    %esi
 4fa:	5f                   	pop    %edi
 4fb:	5d                   	pop    %ebp
 4fc:	c3                   	ret    
 4fd:	8d 76 00             	lea    0x0(%esi),%esi
		printf(2, "cp: cannot open %s\n", source);
		return 0;
	}

	if(fstat(fd, &st) < 0){
		printf(2, "cp: cannot stat %s\n", source);
 500:	83 ec 04             	sub    $0x4,%esp
 503:	56                   	push   %esi
 504:	68 c0 0c 00 00       	push   $0xcc0
 509:	6a 02                	push   $0x2
 50b:	e8 c0 03 00 00       	call   8d0 <printf>
		close(fd);
 510:	89 1c 24             	mov    %ebx,(%esp)
 513:	e8 92 02 00 00       	call   7aa <close>
		return 0;
 518:	83 c4 10             	add    $0x10,%esp
 51b:	31 c0                	xor    %eax,%eax
 51d:	e9 06 fe ff ff       	jmp    328 <cpAll+0x88>
			strcpy(tempDes,destination);
			strcats(tempDes,"/");
			strcats(tempDes,temp);
			//printf(1,"%s\n",tempDes);
			if(st.type == T_FILE){
				cpFile(buf,tempDes);
 522:	8d 85 00 fc ff ff    	lea    -0x400(%ebp),%eax
 528:	83 ec 08             	sub    $0x8,%esp
 52b:	50                   	push   %eax
 52c:	57                   	push   %edi
 52d:	e8 9e fc ff ff       	call   1d0 <cpFile>
 532:	83 c4 10             	add    $0x10,%esp
 535:	e9 36 fe ff ff       	jmp    370 <cpAll+0xd0>
 53a:	66 90                	xchg   %ax,%ax
 53c:	66 90                	xchg   %ax,%ax
 53e:	66 90                	xchg   %ax,%ax

00000540 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	53                   	push   %ebx
 544:	8b 45 08             	mov    0x8(%ebp),%eax
 547:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 54a:	89 c2                	mov    %eax,%edx
 54c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 550:	83 c1 01             	add    $0x1,%ecx
 553:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 557:	83 c2 01             	add    $0x1,%edx
 55a:	84 db                	test   %bl,%bl
 55c:	88 5a ff             	mov    %bl,-0x1(%edx)
 55f:	75 ef                	jne    550 <strcpy+0x10>
    ;
  return os;
}
 561:	5b                   	pop    %ebx
 562:	5d                   	pop    %ebp
 563:	c3                   	ret    
 564:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 56a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000570 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	56                   	push   %esi
 574:	53                   	push   %ebx
 575:	8b 55 08             	mov    0x8(%ebp),%edx
 578:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 57b:	0f b6 02             	movzbl (%edx),%eax
 57e:	0f b6 19             	movzbl (%ecx),%ebx
 581:	84 c0                	test   %al,%al
 583:	75 1e                	jne    5a3 <strcmp+0x33>
 585:	eb 29                	jmp    5b0 <strcmp+0x40>
 587:	89 f6                	mov    %esi,%esi
 589:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 590:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 593:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 596:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 599:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 59d:	84 c0                	test   %al,%al
 59f:	74 0f                	je     5b0 <strcmp+0x40>
 5a1:	89 f1                	mov    %esi,%ecx
 5a3:	38 d8                	cmp    %bl,%al
 5a5:	74 e9                	je     590 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 5a7:	29 d8                	sub    %ebx,%eax
}
 5a9:	5b                   	pop    %ebx
 5aa:	5e                   	pop    %esi
 5ab:	5d                   	pop    %ebp
 5ac:	c3                   	ret    
 5ad:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 5b0:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 5b2:	29 d8                	sub    %ebx,%eax
}
 5b4:	5b                   	pop    %ebx
 5b5:	5e                   	pop    %esi
 5b6:	5d                   	pop    %ebp
 5b7:	c3                   	ret    
 5b8:	90                   	nop
 5b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000005c0 <strlen>:

uint
strlen(char *s)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 5c6:	80 39 00             	cmpb   $0x0,(%ecx)
 5c9:	74 12                	je     5dd <strlen+0x1d>
 5cb:	31 d2                	xor    %edx,%edx
 5cd:	8d 76 00             	lea    0x0(%esi),%esi
 5d0:	83 c2 01             	add    $0x1,%edx
 5d3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 5d7:	89 d0                	mov    %edx,%eax
 5d9:	75 f5                	jne    5d0 <strlen+0x10>
    ;
  return n;
}
 5db:	5d                   	pop    %ebp
 5dc:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 5dd:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 5df:	5d                   	pop    %ebp
 5e0:	c3                   	ret    
 5e1:	eb 0d                	jmp    5f0 <memset>
 5e3:	90                   	nop
 5e4:	90                   	nop
 5e5:	90                   	nop
 5e6:	90                   	nop
 5e7:	90                   	nop
 5e8:	90                   	nop
 5e9:	90                   	nop
 5ea:	90                   	nop
 5eb:	90                   	nop
 5ec:	90                   	nop
 5ed:	90                   	nop
 5ee:	90                   	nop
 5ef:	90                   	nop

000005f0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	57                   	push   %edi
 5f4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 5f7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 5fa:	8b 45 0c             	mov    0xc(%ebp),%eax
 5fd:	89 d7                	mov    %edx,%edi
 5ff:	fc                   	cld    
 600:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 602:	89 d0                	mov    %edx,%eax
 604:	5f                   	pop    %edi
 605:	5d                   	pop    %ebp
 606:	c3                   	ret    
 607:	89 f6                	mov    %esi,%esi
 609:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000610 <strchr>:

char*
strchr(const char *s, char c)
{
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	53                   	push   %ebx
 614:	8b 45 08             	mov    0x8(%ebp),%eax
 617:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 61a:	0f b6 10             	movzbl (%eax),%edx
 61d:	84 d2                	test   %dl,%dl
 61f:	74 1d                	je     63e <strchr+0x2e>
    if(*s == c)
 621:	38 d3                	cmp    %dl,%bl
 623:	89 d9                	mov    %ebx,%ecx
 625:	75 0d                	jne    634 <strchr+0x24>
 627:	eb 17                	jmp    640 <strchr+0x30>
 629:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 630:	38 ca                	cmp    %cl,%dl
 632:	74 0c                	je     640 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 634:	83 c0 01             	add    $0x1,%eax
 637:	0f b6 10             	movzbl (%eax),%edx
 63a:	84 d2                	test   %dl,%dl
 63c:	75 f2                	jne    630 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 63e:	31 c0                	xor    %eax,%eax
}
 640:	5b                   	pop    %ebx
 641:	5d                   	pop    %ebp
 642:	c3                   	ret    
 643:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 649:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000650 <gets>:

char*
gets(char *buf, int max)
{
 650:	55                   	push   %ebp
 651:	89 e5                	mov    %esp,%ebp
 653:	57                   	push   %edi
 654:	56                   	push   %esi
 655:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 656:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 658:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
 65b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 65e:	eb 29                	jmp    689 <gets+0x39>
    cc = read(0, &c, 1);
 660:	83 ec 04             	sub    $0x4,%esp
 663:	6a 01                	push   $0x1
 665:	57                   	push   %edi
 666:	6a 00                	push   $0x0
 668:	e8 2d 01 00 00       	call   79a <read>
    if(cc < 1)
 66d:	83 c4 10             	add    $0x10,%esp
 670:	85 c0                	test   %eax,%eax
 672:	7e 1d                	jle    691 <gets+0x41>
      break;
    buf[i++] = c;
 674:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 678:	8b 55 08             	mov    0x8(%ebp),%edx
 67b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 67d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 67f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 683:	74 1b                	je     6a0 <gets+0x50>
 685:	3c 0d                	cmp    $0xd,%al
 687:	74 17                	je     6a0 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 689:	8d 5e 01             	lea    0x1(%esi),%ebx
 68c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 68f:	7c cf                	jl     660 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 691:	8b 45 08             	mov    0x8(%ebp),%eax
 694:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 698:	8d 65 f4             	lea    -0xc(%ebp),%esp
 69b:	5b                   	pop    %ebx
 69c:	5e                   	pop    %esi
 69d:	5f                   	pop    %edi
 69e:	5d                   	pop    %ebp
 69f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 6a0:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 6a3:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 6a5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 6a9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6ac:	5b                   	pop    %ebx
 6ad:	5e                   	pop    %esi
 6ae:	5f                   	pop    %edi
 6af:	5d                   	pop    %ebp
 6b0:	c3                   	ret    
 6b1:	eb 0d                	jmp    6c0 <stat>
 6b3:	90                   	nop
 6b4:	90                   	nop
 6b5:	90                   	nop
 6b6:	90                   	nop
 6b7:	90                   	nop
 6b8:	90                   	nop
 6b9:	90                   	nop
 6ba:	90                   	nop
 6bb:	90                   	nop
 6bc:	90                   	nop
 6bd:	90                   	nop
 6be:	90                   	nop
 6bf:	90                   	nop

000006c0 <stat>:

int
stat(char *n, struct stat *st)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	56                   	push   %esi
 6c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 6c5:	83 ec 08             	sub    $0x8,%esp
 6c8:	6a 00                	push   $0x0
 6ca:	ff 75 08             	pushl  0x8(%ebp)
 6cd:	e8 f0 00 00 00       	call   7c2 <open>
  if(fd < 0)
 6d2:	83 c4 10             	add    $0x10,%esp
 6d5:	85 c0                	test   %eax,%eax
 6d7:	78 27                	js     700 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 6d9:	83 ec 08             	sub    $0x8,%esp
 6dc:	ff 75 0c             	pushl  0xc(%ebp)
 6df:	89 c3                	mov    %eax,%ebx
 6e1:	50                   	push   %eax
 6e2:	e8 f3 00 00 00       	call   7da <fstat>
 6e7:	89 c6                	mov    %eax,%esi
  close(fd);
 6e9:	89 1c 24             	mov    %ebx,(%esp)
 6ec:	e8 b9 00 00 00       	call   7aa <close>
  return r;
 6f1:	83 c4 10             	add    $0x10,%esp
 6f4:	89 f0                	mov    %esi,%eax
}
 6f6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 6f9:	5b                   	pop    %ebx
 6fa:	5e                   	pop    %esi
 6fb:	5d                   	pop    %ebp
 6fc:	c3                   	ret    
 6fd:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 700:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 705:	eb ef                	jmp    6f6 <stat+0x36>
 707:	89 f6                	mov    %esi,%esi
 709:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000710 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 710:	55                   	push   %ebp
 711:	89 e5                	mov    %esp,%ebp
 713:	53                   	push   %ebx
 714:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 717:	0f be 11             	movsbl (%ecx),%edx
 71a:	8d 42 d0             	lea    -0x30(%edx),%eax
 71d:	3c 09                	cmp    $0x9,%al
 71f:	b8 00 00 00 00       	mov    $0x0,%eax
 724:	77 1f                	ja     745 <atoi+0x35>
 726:	8d 76 00             	lea    0x0(%esi),%esi
 729:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 730:	8d 04 80             	lea    (%eax,%eax,4),%eax
 733:	83 c1 01             	add    $0x1,%ecx
 736:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 73a:	0f be 11             	movsbl (%ecx),%edx
 73d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 740:	80 fb 09             	cmp    $0x9,%bl
 743:	76 eb                	jbe    730 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
 745:	5b                   	pop    %ebx
 746:	5d                   	pop    %ebp
 747:	c3                   	ret    
 748:	90                   	nop
 749:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000750 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 750:	55                   	push   %ebp
 751:	89 e5                	mov    %esp,%ebp
 753:	56                   	push   %esi
 754:	53                   	push   %ebx
 755:	8b 5d 10             	mov    0x10(%ebp),%ebx
 758:	8b 45 08             	mov    0x8(%ebp),%eax
 75b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 75e:	85 db                	test   %ebx,%ebx
 760:	7e 14                	jle    776 <memmove+0x26>
 762:	31 d2                	xor    %edx,%edx
 764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 768:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 76c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 76f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 772:	39 da                	cmp    %ebx,%edx
 774:	75 f2                	jne    768 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 776:	5b                   	pop    %ebx
 777:	5e                   	pop    %esi
 778:	5d                   	pop    %ebp
 779:	c3                   	ret    

0000077a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 77a:	b8 01 00 00 00       	mov    $0x1,%eax
 77f:	cd 40                	int    $0x40
 781:	c3                   	ret    

00000782 <exit>:
SYSCALL(exit)
 782:	b8 02 00 00 00       	mov    $0x2,%eax
 787:	cd 40                	int    $0x40
 789:	c3                   	ret    

0000078a <wait>:
SYSCALL(wait)
 78a:	b8 03 00 00 00       	mov    $0x3,%eax
 78f:	cd 40                	int    $0x40
 791:	c3                   	ret    

00000792 <pipe>:
SYSCALL(pipe)
 792:	b8 04 00 00 00       	mov    $0x4,%eax
 797:	cd 40                	int    $0x40
 799:	c3                   	ret    

0000079a <read>:
SYSCALL(read)
 79a:	b8 05 00 00 00       	mov    $0x5,%eax
 79f:	cd 40                	int    $0x40
 7a1:	c3                   	ret    

000007a2 <write>:
SYSCALL(write)
 7a2:	b8 10 00 00 00       	mov    $0x10,%eax
 7a7:	cd 40                	int    $0x40
 7a9:	c3                   	ret    

000007aa <close>:
SYSCALL(close)
 7aa:	b8 15 00 00 00       	mov    $0x15,%eax
 7af:	cd 40                	int    $0x40
 7b1:	c3                   	ret    

000007b2 <kill>:
SYSCALL(kill)
 7b2:	b8 06 00 00 00       	mov    $0x6,%eax
 7b7:	cd 40                	int    $0x40
 7b9:	c3                   	ret    

000007ba <exec>:
SYSCALL(exec)
 7ba:	b8 07 00 00 00       	mov    $0x7,%eax
 7bf:	cd 40                	int    $0x40
 7c1:	c3                   	ret    

000007c2 <open>:
SYSCALL(open)
 7c2:	b8 0f 00 00 00       	mov    $0xf,%eax
 7c7:	cd 40                	int    $0x40
 7c9:	c3                   	ret    

000007ca <mknod>:
SYSCALL(mknod)
 7ca:	b8 11 00 00 00       	mov    $0x11,%eax
 7cf:	cd 40                	int    $0x40
 7d1:	c3                   	ret    

000007d2 <unlink>:
SYSCALL(unlink)
 7d2:	b8 12 00 00 00       	mov    $0x12,%eax
 7d7:	cd 40                	int    $0x40
 7d9:	c3                   	ret    

000007da <fstat>:
SYSCALL(fstat)
 7da:	b8 08 00 00 00       	mov    $0x8,%eax
 7df:	cd 40                	int    $0x40
 7e1:	c3                   	ret    

000007e2 <link>:
SYSCALL(link)
 7e2:	b8 13 00 00 00       	mov    $0x13,%eax
 7e7:	cd 40                	int    $0x40
 7e9:	c3                   	ret    

000007ea <mkdir>:
SYSCALL(mkdir)
 7ea:	b8 14 00 00 00       	mov    $0x14,%eax
 7ef:	cd 40                	int    $0x40
 7f1:	c3                   	ret    

000007f2 <chdir>:
SYSCALL(chdir)
 7f2:	b8 09 00 00 00       	mov    $0x9,%eax
 7f7:	cd 40                	int    $0x40
 7f9:	c3                   	ret    

000007fa <dup>:
SYSCALL(dup)
 7fa:	b8 0a 00 00 00       	mov    $0xa,%eax
 7ff:	cd 40                	int    $0x40
 801:	c3                   	ret    

00000802 <getpid>:
SYSCALL(getpid)
 802:	b8 0b 00 00 00       	mov    $0xb,%eax
 807:	cd 40                	int    $0x40
 809:	c3                   	ret    

0000080a <sbrk>:
SYSCALL(sbrk)
 80a:	b8 0c 00 00 00       	mov    $0xc,%eax
 80f:	cd 40                	int    $0x40
 811:	c3                   	ret    

00000812 <sleep>:
SYSCALL(sleep)
 812:	b8 0d 00 00 00       	mov    $0xd,%eax
 817:	cd 40                	int    $0x40
 819:	c3                   	ret    

0000081a <uptime>:
SYSCALL(uptime)
 81a:	b8 0e 00 00 00       	mov    $0xe,%eax
 81f:	cd 40                	int    $0x40
 821:	c3                   	ret    
 822:	66 90                	xchg   %ax,%ax
 824:	66 90                	xchg   %ax,%ax
 826:	66 90                	xchg   %ax,%ax
 828:	66 90                	xchg   %ax,%ax
 82a:	66 90                	xchg   %ax,%ax
 82c:	66 90                	xchg   %ax,%ax
 82e:	66 90                	xchg   %ax,%ax

00000830 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 830:	55                   	push   %ebp
 831:	89 e5                	mov    %esp,%ebp
 833:	57                   	push   %edi
 834:	56                   	push   %esi
 835:	53                   	push   %ebx
 836:	89 c6                	mov    %eax,%esi
 838:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 83b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 83e:	85 db                	test   %ebx,%ebx
 840:	74 7e                	je     8c0 <printint+0x90>
 842:	89 d0                	mov    %edx,%eax
 844:	c1 e8 1f             	shr    $0x1f,%eax
 847:	84 c0                	test   %al,%al
 849:	74 75                	je     8c0 <printint+0x90>
    neg = 1;
    x = -xx;
 84b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 84d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 854:	f7 d8                	neg    %eax
 856:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 859:	31 ff                	xor    %edi,%edi
 85b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 85e:	89 ce                	mov    %ecx,%esi
 860:	eb 08                	jmp    86a <printint+0x3a>
 862:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 868:	89 cf                	mov    %ecx,%edi
 86a:	31 d2                	xor    %edx,%edx
 86c:	8d 4f 01             	lea    0x1(%edi),%ecx
 86f:	f7 f6                	div    %esi
 871:	0f b6 92 04 0d 00 00 	movzbl 0xd04(%edx),%edx
  }while((x /= base) != 0);
 878:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 87a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 87d:	75 e9                	jne    868 <printint+0x38>
  if(neg)
 87f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 882:	8b 75 c0             	mov    -0x40(%ebp),%esi
 885:	85 c0                	test   %eax,%eax
 887:	74 08                	je     891 <printint+0x61>
    buf[i++] = '-';
 889:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 88e:	8d 4f 02             	lea    0x2(%edi),%ecx
 891:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 895:	8d 76 00             	lea    0x0(%esi),%esi
 898:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 89b:	83 ec 04             	sub    $0x4,%esp
 89e:	83 ef 01             	sub    $0x1,%edi
 8a1:	6a 01                	push   $0x1
 8a3:	53                   	push   %ebx
 8a4:	56                   	push   %esi
 8a5:	88 45 d7             	mov    %al,-0x29(%ebp)
 8a8:	e8 f5 fe ff ff       	call   7a2 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 8ad:	83 c4 10             	add    $0x10,%esp
 8b0:	39 df                	cmp    %ebx,%edi
 8b2:	75 e4                	jne    898 <printint+0x68>
    putc(fd, buf[i]);
}
 8b4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8b7:	5b                   	pop    %ebx
 8b8:	5e                   	pop    %esi
 8b9:	5f                   	pop    %edi
 8ba:	5d                   	pop    %ebp
 8bb:	c3                   	ret    
 8bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 8c0:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 8c2:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 8c9:	eb 8b                	jmp    856 <printint+0x26>
 8cb:	90                   	nop
 8cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000008d0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 8d0:	55                   	push   %ebp
 8d1:	89 e5                	mov    %esp,%ebp
 8d3:	57                   	push   %edi
 8d4:	56                   	push   %esi
 8d5:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 8d6:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 8d9:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 8dc:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 8df:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 8e2:	89 45 d0             	mov    %eax,-0x30(%ebp)
 8e5:	0f b6 1e             	movzbl (%esi),%ebx
 8e8:	83 c6 01             	add    $0x1,%esi
 8eb:	84 db                	test   %bl,%bl
 8ed:	0f 84 b0 00 00 00    	je     9a3 <printf+0xd3>
 8f3:	31 d2                	xor    %edx,%edx
 8f5:	eb 39                	jmp    930 <printf+0x60>
 8f7:	89 f6                	mov    %esi,%esi
 8f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 900:	83 f8 25             	cmp    $0x25,%eax
 903:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 906:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 90b:	74 18                	je     925 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 90d:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 910:	83 ec 04             	sub    $0x4,%esp
 913:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 916:	6a 01                	push   $0x1
 918:	50                   	push   %eax
 919:	57                   	push   %edi
 91a:	e8 83 fe ff ff       	call   7a2 <write>
 91f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 922:	83 c4 10             	add    $0x10,%esp
 925:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 928:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 92c:	84 db                	test   %bl,%bl
 92e:	74 73                	je     9a3 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
 930:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 932:	0f be cb             	movsbl %bl,%ecx
 935:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 938:	74 c6                	je     900 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 93a:	83 fa 25             	cmp    $0x25,%edx
 93d:	75 e6                	jne    925 <printf+0x55>
      if(c == 'd'){
 93f:	83 f8 64             	cmp    $0x64,%eax
 942:	0f 84 f8 00 00 00    	je     a40 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 948:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 94e:	83 f9 70             	cmp    $0x70,%ecx
 951:	74 5d                	je     9b0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 953:	83 f8 73             	cmp    $0x73,%eax
 956:	0f 84 84 00 00 00    	je     9e0 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 95c:	83 f8 63             	cmp    $0x63,%eax
 95f:	0f 84 ea 00 00 00    	je     a4f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 965:	83 f8 25             	cmp    $0x25,%eax
 968:	0f 84 c2 00 00 00    	je     a30 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 96e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 971:	83 ec 04             	sub    $0x4,%esp
 974:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 978:	6a 01                	push   $0x1
 97a:	50                   	push   %eax
 97b:	57                   	push   %edi
 97c:	e8 21 fe ff ff       	call   7a2 <write>
 981:	83 c4 0c             	add    $0xc,%esp
 984:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 987:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 98a:	6a 01                	push   $0x1
 98c:	50                   	push   %eax
 98d:	57                   	push   %edi
 98e:	83 c6 01             	add    $0x1,%esi
 991:	e8 0c fe ff ff       	call   7a2 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 996:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 99a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 99d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 99f:	84 db                	test   %bl,%bl
 9a1:	75 8d                	jne    930 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 9a3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 9a6:	5b                   	pop    %ebx
 9a7:	5e                   	pop    %esi
 9a8:	5f                   	pop    %edi
 9a9:	5d                   	pop    %ebp
 9aa:	c3                   	ret    
 9ab:	90                   	nop
 9ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 9b0:	83 ec 0c             	sub    $0xc,%esp
 9b3:	b9 10 00 00 00       	mov    $0x10,%ecx
 9b8:	6a 00                	push   $0x0
 9ba:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 9bd:	89 f8                	mov    %edi,%eax
 9bf:	8b 13                	mov    (%ebx),%edx
 9c1:	e8 6a fe ff ff       	call   830 <printint>
        ap++;
 9c6:	89 d8                	mov    %ebx,%eax
 9c8:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 9cb:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 9cd:	83 c0 04             	add    $0x4,%eax
 9d0:	89 45 d0             	mov    %eax,-0x30(%ebp)
 9d3:	e9 4d ff ff ff       	jmp    925 <printf+0x55>
 9d8:	90                   	nop
 9d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 9e0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 9e3:	8b 18                	mov    (%eax),%ebx
        ap++;
 9e5:	83 c0 04             	add    $0x4,%eax
 9e8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 9eb:	b8 fd 0c 00 00       	mov    $0xcfd,%eax
 9f0:	85 db                	test   %ebx,%ebx
 9f2:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 9f5:	0f b6 03             	movzbl (%ebx),%eax
 9f8:	84 c0                	test   %al,%al
 9fa:	74 23                	je     a1f <printf+0x14f>
 9fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a00:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 a03:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 a06:	83 ec 04             	sub    $0x4,%esp
 a09:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 a0b:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 a0e:	50                   	push   %eax
 a0f:	57                   	push   %edi
 a10:	e8 8d fd ff ff       	call   7a2 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 a15:	0f b6 03             	movzbl (%ebx),%eax
 a18:	83 c4 10             	add    $0x10,%esp
 a1b:	84 c0                	test   %al,%al
 a1d:	75 e1                	jne    a00 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 a1f:	31 d2                	xor    %edx,%edx
 a21:	e9 ff fe ff ff       	jmp    925 <printf+0x55>
 a26:	8d 76 00             	lea    0x0(%esi),%esi
 a29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 a30:	83 ec 04             	sub    $0x4,%esp
 a33:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 a36:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 a39:	6a 01                	push   $0x1
 a3b:	e9 4c ff ff ff       	jmp    98c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 a40:	83 ec 0c             	sub    $0xc,%esp
 a43:	b9 0a 00 00 00       	mov    $0xa,%ecx
 a48:	6a 01                	push   $0x1
 a4a:	e9 6b ff ff ff       	jmp    9ba <printf+0xea>
 a4f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 a52:	83 ec 04             	sub    $0x4,%esp
 a55:	8b 03                	mov    (%ebx),%eax
 a57:	6a 01                	push   $0x1
 a59:	88 45 e4             	mov    %al,-0x1c(%ebp)
 a5c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 a5f:	50                   	push   %eax
 a60:	57                   	push   %edi
 a61:	e8 3c fd ff ff       	call   7a2 <write>
 a66:	e9 5b ff ff ff       	jmp    9c6 <printf+0xf6>
 a6b:	66 90                	xchg   %ax,%ax
 a6d:	66 90                	xchg   %ax,%ax
 a6f:	90                   	nop

00000a70 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a70:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a71:	a1 80 10 00 00       	mov    0x1080,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 a76:	89 e5                	mov    %esp,%ebp
 a78:	57                   	push   %edi
 a79:	56                   	push   %esi
 a7a:	53                   	push   %ebx
 a7b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a7e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 a80:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a83:	39 c8                	cmp    %ecx,%eax
 a85:	73 19                	jae    aa0 <free+0x30>
 a87:	89 f6                	mov    %esi,%esi
 a89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 a90:	39 d1                	cmp    %edx,%ecx
 a92:	72 1c                	jb     ab0 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a94:	39 d0                	cmp    %edx,%eax
 a96:	73 18                	jae    ab0 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 a98:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a9a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a9c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a9e:	72 f0                	jb     a90 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 aa0:	39 d0                	cmp    %edx,%eax
 aa2:	72 f4                	jb     a98 <free+0x28>
 aa4:	39 d1                	cmp    %edx,%ecx
 aa6:	73 f0                	jae    a98 <free+0x28>
 aa8:	90                   	nop
 aa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 ab0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 ab3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 ab6:	39 d7                	cmp    %edx,%edi
 ab8:	74 19                	je     ad3 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 aba:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 abd:	8b 50 04             	mov    0x4(%eax),%edx
 ac0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 ac3:	39 f1                	cmp    %esi,%ecx
 ac5:	74 23                	je     aea <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 ac7:	89 08                	mov    %ecx,(%eax)
  freep = p;
 ac9:	a3 80 10 00 00       	mov    %eax,0x1080
}
 ace:	5b                   	pop    %ebx
 acf:	5e                   	pop    %esi
 ad0:	5f                   	pop    %edi
 ad1:	5d                   	pop    %ebp
 ad2:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 ad3:	03 72 04             	add    0x4(%edx),%esi
 ad6:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 ad9:	8b 10                	mov    (%eax),%edx
 adb:	8b 12                	mov    (%edx),%edx
 add:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 ae0:	8b 50 04             	mov    0x4(%eax),%edx
 ae3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 ae6:	39 f1                	cmp    %esi,%ecx
 ae8:	75 dd                	jne    ac7 <free+0x57>
    p->s.size += bp->s.size;
 aea:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 aed:	a3 80 10 00 00       	mov    %eax,0x1080
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 af2:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 af5:	8b 53 f8             	mov    -0x8(%ebx),%edx
 af8:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 afa:	5b                   	pop    %ebx
 afb:	5e                   	pop    %esi
 afc:	5f                   	pop    %edi
 afd:	5d                   	pop    %ebp
 afe:	c3                   	ret    
 aff:	90                   	nop

00000b00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 b00:	55                   	push   %ebp
 b01:	89 e5                	mov    %esp,%ebp
 b03:	57                   	push   %edi
 b04:	56                   	push   %esi
 b05:	53                   	push   %ebx
 b06:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b09:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 b0c:	8b 15 80 10 00 00    	mov    0x1080,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b12:	8d 78 07             	lea    0x7(%eax),%edi
 b15:	c1 ef 03             	shr    $0x3,%edi
 b18:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 b1b:	85 d2                	test   %edx,%edx
 b1d:	0f 84 a3 00 00 00    	je     bc6 <malloc+0xc6>
 b23:	8b 02                	mov    (%edx),%eax
 b25:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 b28:	39 cf                	cmp    %ecx,%edi
 b2a:	76 74                	jbe    ba0 <malloc+0xa0>
 b2c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 b32:	be 00 10 00 00       	mov    $0x1000,%esi
 b37:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 b3e:	0f 43 f7             	cmovae %edi,%esi
 b41:	ba 00 80 00 00       	mov    $0x8000,%edx
 b46:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 b4c:	0f 46 da             	cmovbe %edx,%ebx
 b4f:	eb 10                	jmp    b61 <malloc+0x61>
 b51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b58:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 b5a:	8b 48 04             	mov    0x4(%eax),%ecx
 b5d:	39 cf                	cmp    %ecx,%edi
 b5f:	76 3f                	jbe    ba0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 b61:	39 05 80 10 00 00    	cmp    %eax,0x1080
 b67:	89 c2                	mov    %eax,%edx
 b69:	75 ed                	jne    b58 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 b6b:	83 ec 0c             	sub    $0xc,%esp
 b6e:	53                   	push   %ebx
 b6f:	e8 96 fc ff ff       	call   80a <sbrk>
  if(p == (char*)-1)
 b74:	83 c4 10             	add    $0x10,%esp
 b77:	83 f8 ff             	cmp    $0xffffffff,%eax
 b7a:	74 1c                	je     b98 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 b7c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 b7f:	83 ec 0c             	sub    $0xc,%esp
 b82:	83 c0 08             	add    $0x8,%eax
 b85:	50                   	push   %eax
 b86:	e8 e5 fe ff ff       	call   a70 <free>
  return freep;
 b8b:	8b 15 80 10 00 00    	mov    0x1080,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 b91:	83 c4 10             	add    $0x10,%esp
 b94:	85 d2                	test   %edx,%edx
 b96:	75 c0                	jne    b58 <malloc+0x58>
        return 0;
 b98:	31 c0                	xor    %eax,%eax
 b9a:	eb 1c                	jmp    bb8 <malloc+0xb8>
 b9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 ba0:	39 cf                	cmp    %ecx,%edi
 ba2:	74 1c                	je     bc0 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 ba4:	29 f9                	sub    %edi,%ecx
 ba6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 ba9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 bac:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 baf:	89 15 80 10 00 00    	mov    %edx,0x1080
      return (void*)(p + 1);
 bb5:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 bb8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 bbb:	5b                   	pop    %ebx
 bbc:	5e                   	pop    %esi
 bbd:	5f                   	pop    %edi
 bbe:	5d                   	pop    %ebp
 bbf:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 bc0:	8b 08                	mov    (%eax),%ecx
 bc2:	89 0a                	mov    %ecx,(%edx)
 bc4:	eb e9                	jmp    baf <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 bc6:	c7 05 80 10 00 00 84 	movl   $0x1084,0x1080
 bcd:	10 00 00 
 bd0:	c7 05 84 10 00 00 84 	movl   $0x1084,0x1084
 bd7:	10 00 00 
    base.s.size = 0;
 bda:	b8 84 10 00 00       	mov    $0x1084,%eax
 bdf:	c7 05 88 10 00 00 00 	movl   $0x0,0x1088
 be6:	00 00 00 
 be9:	e9 3e ff ff ff       	jmp    b2c <malloc+0x2c>
