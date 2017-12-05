
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
  19:	68 0c 0d 00 00       	push   $0xd0c
  1e:	6a 02                	push   $0x2
  20:	e8 4b 09 00 00       	call   970 <printf>
		exit();
  25:	e8 f8 07 00 00       	call   822 <exit>
	}
	if(strcmp(argv[1],"-R")==0){
  2a:	50                   	push   %eax
  2b:	50                   	push   %eax
  2c:	68 b7 0d 00 00       	push   $0xdb7
  31:	ff 73 04             	pushl  0x4(%ebx)
  34:	e8 d7 05 00 00       	call   610 <strcmp>
  39:	83 c4 10             	add    $0x10,%esp
  3c:	85 c0                	test   %eax,%eax
  3e:	75 1a                	jne    5a <main+0x5a>
		if(cpAll(argv[2],argv[3],1)<1){
  40:	50                   	push   %eax
  41:	6a 01                	push   $0x1
  43:	ff 73 0c             	pushl  0xc(%ebx)
  46:	ff 73 08             	pushl  0x8(%ebx)
  49:	e8 e2 02 00 00       	call   330 <cpAll>
  4e:	83 c4 10             	add    $0x10,%esp
  51:	85 c0                	test   %eax,%eax
  53:	7e 6a                	jle    bf <main+0xbf>
	}else{
		if(cpFile(argv[1],argv[2])<1){
			printf(2,"Error copying file!\n");
		}
	}
 	exit();
  55:	e8 c8 07 00 00       	call   822 <exit>
	}
	if(strcmp(argv[1],"-R")==0){
		if(cpAll(argv[2],argv[3],1)<1){
			printf(2,"Error performing cp -R operation!\n");
		}
	}else if(strcmp(argv[1],"*")==0){
  5a:	50                   	push   %eax
  5b:	50                   	push   %eax
  5c:	68 ba 0d 00 00       	push   $0xdba
  61:	ff 73 04             	pushl  0x4(%ebx)
  64:	e8 a7 05 00 00       	call   610 <strcmp>
  69:	83 c4 10             	add    $0x10,%esp
  6c:	85 c0                	test   %eax,%eax
  6e:	75 28                	jne    98 <main+0x98>
		if(cpAll(argv[2],argv[3],0)<1){
  70:	50                   	push   %eax
  71:	6a 00                	push   $0x0
  73:	ff 73 0c             	pushl  0xc(%ebx)
  76:	ff 73 08             	pushl  0x8(%ebx)
  79:	e8 b2 02 00 00       	call   330 <cpAll>
  7e:	83 c4 10             	add    $0x10,%esp
  81:	85 c0                	test   %eax,%eax
  83:	7f d0                	jg     55 <main+0x55>
			printf(2,"Error performing cp * operation!\n");
  85:	51                   	push   %ecx
  86:	51                   	push   %ecx
  87:	68 5c 0d 00 00       	push   $0xd5c
  8c:	6a 02                	push   $0x2
  8e:	e8 dd 08 00 00       	call   970 <printf>
  93:	83 c4 10             	add    $0x10,%esp
  96:	eb bd                	jmp    55 <main+0x55>
		}
	}else{
		if(cpFile(argv[1],argv[2])<1){
  98:	52                   	push   %edx
  99:	52                   	push   %edx
  9a:	ff 73 08             	pushl  0x8(%ebx)
  9d:	ff 73 04             	pushl  0x4(%ebx)
  a0:	e8 7b 01 00 00       	call   220 <cpFile>
  a5:	83 c4 10             	add    $0x10,%esp
  a8:	85 c0                	test   %eax,%eax
  aa:	7f a9                	jg     55 <main+0x55>
			printf(2,"Error copying file!\n");
  ac:	50                   	push   %eax
  ad:	50                   	push   %eax
  ae:	68 bc 0d 00 00       	push   $0xdbc
  b3:	6a 02                	push   $0x2
  b5:	e8 b6 08 00 00       	call   970 <printf>
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
  c1:	68 38 0d 00 00       	push   $0xd38
  c6:	6a 02                	push   $0x2
  c8:	e8 a3 08 00 00       	call   970 <printf>
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
  f2:	e8 69 05 00 00       	call   660 <strlen>
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

00000130 <strcat>:
char* strcat(char* s1, const char* s2){
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	53                   	push   %ebx
 134:	8b 45 08             	mov    0x8(%ebp),%eax
 137:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  char* b = s1;

  while (*s1) ++s1;
 13a:	80 38 00             	cmpb   $0x0,(%eax)
 13d:	89 c2                	mov    %eax,%edx
 13f:	74 28                	je     169 <strcat+0x39>
 141:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 148:	83 c2 01             	add    $0x1,%edx
 14b:	80 3a 00             	cmpb   $0x0,(%edx)
 14e:	75 f8                	jne    148 <strcat+0x18>
  while (*s2) *s1++ = *s2++;
 150:	0f b6 0b             	movzbl (%ebx),%ecx
 153:	84 c9                	test   %cl,%cl
 155:	74 19                	je     170 <strcat+0x40>
 157:	89 f6                	mov    %esi,%esi
 159:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 160:	83 c2 01             	add    $0x1,%edx
 163:	83 c3 01             	add    $0x1,%ebx
 166:	88 4a ff             	mov    %cl,-0x1(%edx)
 169:	0f b6 0b             	movzbl (%ebx),%ecx
 16c:	84 c9                	test   %cl,%cl
 16e:	75 f0                	jne    160 <strcat+0x30>
  *s1 = 0;
 170:	c6 02 00             	movb   $0x0,(%edx)

  return b;
}
 173:	5b                   	pop    %ebx
 174:	5d                   	pop    %ebp
 175:	c3                   	ret    
 176:	8d 76 00             	lea    0x0(%esi),%esi
 179:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000180 <fmtname>:
char* fmtname(char *path){
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	56                   	push   %esi
 184:	53                   	push   %ebx
 185:	8b 5d 08             	mov    0x8(%ebp),%ebx
	static char buf[DIRSIZ+1];
	char *p;
	for(p=path+strlen(path); p >= path && *p != '/'; p--);
 188:	83 ec 0c             	sub    $0xc,%esp
 18b:	53                   	push   %ebx
 18c:	e8 cf 04 00 00       	call   660 <strlen>
 191:	83 c4 10             	add    $0x10,%esp
 194:	01 d8                	add    %ebx,%eax
 196:	73 0f                	jae    1a7 <fmtname+0x27>
 198:	eb 12                	jmp    1ac <fmtname+0x2c>
 19a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1a0:	83 e8 01             	sub    $0x1,%eax
 1a3:	39 c3                	cmp    %eax,%ebx
 1a5:	77 05                	ja     1ac <fmtname+0x2c>
 1a7:	80 38 2f             	cmpb   $0x2f,(%eax)
 1aa:	75 f4                	jne    1a0 <fmtname+0x20>
	p++;
 1ac:	8d 58 01             	lea    0x1(%eax),%ebx
	if(strlen(p) >= DIRSIZ){
 1af:	83 ec 0c             	sub    $0xc,%esp
 1b2:	53                   	push   %ebx
 1b3:	e8 a8 04 00 00       	call   660 <strlen>
 1b8:	83 c4 10             	add    $0x10,%esp
 1bb:	83 f8 0d             	cmp    $0xd,%eax
 1be:	77 4a                	ja     20a <fmtname+0x8a>
		return p;
	}
	memmove(buf, p, strlen(p));
 1c0:	83 ec 0c             	sub    $0xc,%esp
 1c3:	53                   	push   %ebx
 1c4:	e8 97 04 00 00       	call   660 <strlen>
 1c9:	83 c4 0c             	add    $0xc,%esp
 1cc:	50                   	push   %eax
 1cd:	53                   	push   %ebx
 1ce:	68 90 11 00 00       	push   $0x1190
 1d3:	e8 18 06 00 00       	call   7f0 <memmove>
	memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
 1d8:	89 1c 24             	mov    %ebx,(%esp)
 1db:	e8 80 04 00 00       	call   660 <strlen>
 1e0:	89 1c 24             	mov    %ebx,(%esp)
 1e3:	89 c6                	mov    %eax,%esi
	return buf;
 1e5:	bb 90 11 00 00       	mov    $0x1190,%ebx
	p++;
	if(strlen(p) >= DIRSIZ){
		return p;
	}
	memmove(buf, p, strlen(p));
	memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
 1ea:	e8 71 04 00 00       	call   660 <strlen>
 1ef:	ba 0e 00 00 00       	mov    $0xe,%edx
 1f4:	83 c4 0c             	add    $0xc,%esp
 1f7:	05 90 11 00 00       	add    $0x1190,%eax
 1fc:	29 f2                	sub    %esi,%edx
 1fe:	52                   	push   %edx
 1ff:	6a 20                	push   $0x20
 201:	50                   	push   %eax
 202:	e8 89 04 00 00       	call   690 <memset>
	return buf;
 207:	83 c4 10             	add    $0x10,%esp
}
 20a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 20d:	89 d8                	mov    %ebx,%eax
 20f:	5b                   	pop    %ebx
 210:	5e                   	pop    %esi
 211:	5d                   	pop    %ebp
 212:	c3                   	ret    
 213:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 219:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000220 <cpFile>:

int cpFile(char* source, char* destination){
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	57                   	push   %edi
 224:	56                   	push   %esi
 225:	53                   	push   %ebx
 226:	81 ec 24 27 00 00    	sub    $0x2724,%esp
	char bufs[10000];
	int sourceFD, destinationFD, in,out;

	

	if ((sourceFD = open(source, O_RDONLY)) < 0) {
 22c:	6a 00                	push   $0x0
 22e:	ff 75 08             	pushl  0x8(%ebp)
 231:	e8 2c 06 00 00       	call   862 <open>
 236:	83 c4 10             	add    $0x10,%esp
 239:	85 c0                	test   %eax,%eax
 23b:	89 c6                	mov    %eax,%esi
 23d:	78 71                	js     2b0 <cpFile+0x90>
		printf(2, "CP cannot open source file %s\n", sourceFD);
		return 0;
	}
	if ((destinationFD = open(destination, O_CREATE | O_WRONLY)) < 0) {
 23f:	83 ec 08             	sub    $0x8,%esp
 242:	8d 9d d8 d8 ff ff    	lea    -0x2728(%ebp),%ebx
 248:	68 01 02 00 00       	push   $0x201
 24d:	ff 75 0c             	pushl  0xc(%ebp)
 250:	e8 0d 06 00 00       	call   862 <open>
 255:	83 c4 10             	add    $0x10,%esp
 258:	85 c0                	test   %eax,%eax
 25a:	89 c7                	mov    %eax,%edi
 25c:	79 14                	jns    272 <cpFile+0x52>
 25e:	eb 6d                	jmp    2cd <cpFile+0xad>
		return 0;
	}

	while ((in = read(sourceFD, bufs, sizeof(bufs))) > 0) {
		//printf(1,"%c",in);
	out = write(destinationFD, bufs, in);
 260:	83 ec 04             	sub    $0x4,%esp
 263:	50                   	push   %eax
 264:	53                   	push   %ebx
 265:	57                   	push   %edi
 266:	e8 d7 05 00 00       	call   842 <write>
	if (out < 0){ 
 26b:	83 c4 10             	add    $0x10,%esp
 26e:	85 c0                	test   %eax,%eax
 270:	78 16                	js     288 <cpFile+0x68>
	if ((destinationFD = open(destination, O_CREATE | O_WRONLY)) < 0) {
		printf(2, "CP cannot create destination file %s\n", destinationFD);
		return 0;
	}

	while ((in = read(sourceFD, bufs, sizeof(bufs))) > 0) {
 272:	83 ec 04             	sub    $0x4,%esp
 275:	68 10 27 00 00       	push   $0x2710
 27a:	53                   	push   %ebx
 27b:	56                   	push   %esi
 27c:	e8 b9 05 00 00       	call   83a <read>
 281:	83 c4 10             	add    $0x10,%esp
 284:	85 c0                	test   %eax,%eax
 286:	7f d8                	jg     260 <cpFile+0x40>
	if (out < 0){ 
	 	break;
		}
	}
	//printf(1,"END OF CP %d\n",in);
	close(sourceFD);
 288:	83 ec 0c             	sub    $0xc,%esp
 28b:	56                   	push   %esi
 28c:	e8 b9 05 00 00       	call   84a <close>
	close(destinationFD);
 291:	89 3c 24             	mov    %edi,(%esp)
 294:	e8 b1 05 00 00       	call   84a <close>
	return 1;
 299:	83 c4 10             	add    $0x10,%esp
 29c:	b8 01 00 00 00       	mov    $0x1,%eax
}
 2a1:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2a4:	5b                   	pop    %ebx
 2a5:	5e                   	pop    %esi
 2a6:	5f                   	pop    %edi
 2a7:	5d                   	pop    %ebp
 2a8:	c3                   	ret    
 2a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	int sourceFD, destinationFD, in,out;

	

	if ((sourceFD = open(source, O_RDONLY)) < 0) {
		printf(2, "CP cannot open source file %s\n", sourceFD);
 2b0:	83 ec 04             	sub    $0x4,%esp
 2b3:	50                   	push   %eax
 2b4:	68 90 0c 00 00       	push   $0xc90
 2b9:	6a 02                	push   $0x2
 2bb:	e8 b0 06 00 00       	call   970 <printf>
		return 0;
 2c0:	83 c4 10             	add    $0x10,%esp
	}
	//printf(1,"END OF CP %d\n",in);
	close(sourceFD);
	close(destinationFD);
	return 1;
}
 2c3:	8d 65 f4             	lea    -0xc(%ebp),%esp

	

	if ((sourceFD = open(source, O_RDONLY)) < 0) {
		printf(2, "CP cannot open source file %s\n", sourceFD);
		return 0;
 2c6:	31 c0                	xor    %eax,%eax
	}
	//printf(1,"END OF CP %d\n",in);
	close(sourceFD);
	close(destinationFD);
	return 1;
}
 2c8:	5b                   	pop    %ebx
 2c9:	5e                   	pop    %esi
 2ca:	5f                   	pop    %edi
 2cb:	5d                   	pop    %ebp
 2cc:	c3                   	ret    
	if ((sourceFD = open(source, O_RDONLY)) < 0) {
		printf(2, "CP cannot open source file %s\n", sourceFD);
		return 0;
	}
	if ((destinationFD = open(destination, O_CREATE | O_WRONLY)) < 0) {
		printf(2, "CP cannot create destination file %s\n", destinationFD);
 2cd:	83 ec 04             	sub    $0x4,%esp
 2d0:	50                   	push   %eax
 2d1:	68 b0 0c 00 00       	push   $0xcb0
 2d6:	6a 02                	push   $0x2
 2d8:	e8 93 06 00 00       	call   970 <printf>
		return 0;
 2dd:	83 c4 10             	add    $0x10,%esp
 2e0:	31 c0                	xor    %eax,%eax
 2e2:	eb bd                	jmp    2a1 <cpFile+0x81>
 2e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000002f0 <cpHardLink>:
	//printf(1,"END OF CP %d\n",in);
	close(sourceFD);
	close(destinationFD);
	return 1;
}
int cpHardLink (char* source, char* destination){
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	56                   	push   %esi
 2f4:	53                   	push   %ebx
 2f5:	8b 75 0c             	mov    0xc(%ebp),%esi
 2f8:	8b 5d 08             	mov    0x8(%ebp),%ebx
	if(link(source,destination)){
 2fb:	83 ec 08             	sub    $0x8,%esp
 2fe:	56                   	push   %esi
 2ff:	53                   	push   %ebx
 300:	e8 7d 05 00 00       	call   882 <link>
 305:	83 c4 10             	add    $0x10,%esp
 308:	85 c0                	test   %eax,%eax
 30a:	ba 01 00 00 00       	mov    $0x1,%edx
 30f:	74 13                	je     324 <cpHardLink+0x34>
		printf(1,"cp failed to perform copy operation from %s to %s\n",source,destination);
 311:	56                   	push   %esi
 312:	53                   	push   %ebx
 313:	68 d8 0c 00 00       	push   $0xcd8
 318:	6a 01                	push   $0x1
 31a:	e8 51 06 00 00       	call   970 <printf>
 31f:	83 c4 10             	add    $0x10,%esp
 322:	31 d2                	xor    %edx,%edx
		return 0;
	}
	return 1;
}
 324:	8d 65 f8             	lea    -0x8(%ebp),%esp
 327:	89 d0                	mov    %edx,%eax
 329:	5b                   	pop    %ebx
 32a:	5e                   	pop    %esi
 32b:	5d                   	pop    %ebp
 32c:	c3                   	ret    
 32d:	8d 76 00             	lea    0x0(%esi),%esi

00000330 <cpAll>:
int cpAll(char* source, char* destination, int mode){
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	57                   	push   %edi
 334:	56                   	push   %esi
 335:	53                   	push   %ebx
 336:	81 ec 38 06 00 00    	sub    $0x638,%esp
char buf[512], *p,tempDes[1000];
	int fd;
	struct dirent de;
	struct stat st;
	mkdir(destination);
 33c:	ff 75 0c             	pushl  0xc(%ebp)
		printf(1,"cp failed to perform copy operation from %s to %s\n",source,destination);
		return 0;
	}
	return 1;
}
int cpAll(char* source, char* destination, int mode){
 33f:	8b 75 08             	mov    0x8(%ebp),%esi
char buf[512], *p,tempDes[1000];
	int fd;
	struct dirent de;
	struct stat st;
	mkdir(destination);
 342:	e8 43 05 00 00       	call   88a <mkdir>
	chdir(destination);
 347:	58                   	pop    %eax
 348:	ff 75 0c             	pushl  0xc(%ebp)
 34b:	e8 42 05 00 00       	call   892 <chdir>
	if((fd = open(source, 0)) < 0){
 350:	58                   	pop    %eax
 351:	5a                   	pop    %edx
 352:	6a 00                	push   $0x0
 354:	56                   	push   %esi
 355:	e8 08 05 00 00       	call   862 <open>
 35a:	83 c4 10             	add    $0x10,%esp
 35d:	85 c0                	test   %eax,%eax
 35f:	0f 88 1b 02 00 00    	js     580 <cpAll+0x250>
 365:	89 c3                	mov    %eax,%ebx
		printf(2, "cp: cannot open %s\n", source);
		return 0;
	}

	if(fstat(fd, &st) < 0){
 367:	8d 85 ec f9 ff ff    	lea    -0x614(%ebp),%eax
 36d:	83 ec 08             	sub    $0x8,%esp
 370:	50                   	push   %eax
 371:	53                   	push   %ebx
 372:	e8 03 05 00 00       	call   87a <fstat>
 377:	83 c4 10             	add    $0x10,%esp
 37a:	85 c0                	test   %eax,%eax
 37c:	0f 88 1e 02 00 00    	js     5a0 <cpAll+0x270>
		printf(2, "cp: cannot stat %s\n", source);
		close(fd);
		return 0;
	}

	switch(st.type){
 382:	0f b7 85 ec f9 ff ff 	movzwl -0x614(%ebp),%eax
 389:	66 83 f8 01          	cmp    $0x1,%ax
 38d:	74 31                	je     3c0 <cpAll+0x90>
 38f:	66 83 f8 02          	cmp    $0x2,%ax
 393:	75 12                	jne    3a7 <cpAll+0x77>
		case T_FILE:
			printf(2, "CP fail!\n");
 395:	83 ec 08             	sub    $0x8,%esp
 398:	68 a8 0d 00 00       	push   $0xda8
 39d:	6a 02                	push   $0x2
 39f:	e8 cc 05 00 00       	call   970 <printf>
			break;
 3a4:	83 c4 10             	add    $0x10,%esp
				cpAll(buf,tempDes,mode);
			}
		}
		break;
	}
	close(fd);
 3a7:	83 ec 0c             	sub    $0xc,%esp
 3aa:	53                   	push   %ebx
 3ab:	e8 9a 04 00 00       	call   84a <close>
	return 1;
 3b0:	83 c4 10             	add    $0x10,%esp
 3b3:	b8 01 00 00 00       	mov    $0x1,%eax
}
 3b8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3bb:	5b                   	pop    %ebx
 3bc:	5e                   	pop    %esi
 3bd:	5f                   	pop    %edi
 3be:	5d                   	pop    %ebp
 3bf:	c3                   	ret    
	switch(st.type){
		case T_FILE:
			printf(2, "CP fail!\n");
			break;
		case T_DIR:
			strcpy(buf, source);
 3c0:	8d bd 00 fa ff ff    	lea    -0x600(%ebp),%edi
 3c6:	83 ec 08             	sub    $0x8,%esp
 3c9:	56                   	push   %esi
 3ca:	8d b5 dc f9 ff ff    	lea    -0x624(%ebp),%esi
 3d0:	57                   	push   %edi
 3d1:	e8 0a 02 00 00       	call   5e0 <strcpy>
			p = buf+strlen(buf);
 3d6:	89 3c 24             	mov    %edi,(%esp)
 3d9:	e8 82 02 00 00       	call   660 <strlen>
 3de:	8d 14 07             	lea    (%edi,%eax,1),%edx
			*p++ = '/';
 3e1:	8d 44 07 01          	lea    0x1(%edi,%eax,1),%eax
		while(read(fd, &de, sizeof(de)) == sizeof(de)){
 3e5:	83 c4 10             	add    $0x10,%esp
		case T_FILE:
			printf(2, "CP fail!\n");
			break;
		case T_DIR:
			strcpy(buf, source);
			p = buf+strlen(buf);
 3e8:	89 95 d0 f9 ff ff    	mov    %edx,-0x630(%ebp)
			*p++ = '/';
 3ee:	89 85 cc f9 ff ff    	mov    %eax,-0x634(%ebp)
 3f4:	c6 02 2f             	movb   $0x2f,(%edx)
 3f7:	89 f6                	mov    %esi,%esi
 3f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
		while(read(fd, &de, sizeof(de)) == sizeof(de)){
 400:	83 ec 04             	sub    $0x4,%esp
 403:	6a 10                	push   $0x10
 405:	56                   	push   %esi
 406:	53                   	push   %ebx
 407:	e8 2e 04 00 00       	call   83a <read>
 40c:	83 c4 10             	add    $0x10,%esp
 40f:	83 f8 10             	cmp    $0x10,%eax
 412:	75 93                	jne    3a7 <cpAll+0x77>
			if(de.inum == 0)
 414:	66 83 bd dc f9 ff ff 	cmpw   $0x0,-0x624(%ebp)
 41b:	00 
 41c:	74 e2                	je     400 <cpAll+0xd0>
				continue;
			memmove(p, de.name, DIRSIZ);
 41e:	8d 85 de f9 ff ff    	lea    -0x622(%ebp),%eax
 424:	83 ec 04             	sub    $0x4,%esp
 427:	6a 0e                	push   $0xe
 429:	50                   	push   %eax
 42a:	ff b5 cc f9 ff ff    	pushl  -0x634(%ebp)
 430:	e8 bb 03 00 00       	call   7f0 <memmove>
			p[DIRSIZ] = 0;
 435:	8b 85 d0 f9 ff ff    	mov    -0x630(%ebp),%eax
 43b:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
			if(stat(buf, &st) < 0){
 43f:	59                   	pop    %ecx
 440:	58                   	pop    %eax
 441:	8d 85 ec f9 ff ff    	lea    -0x614(%ebp),%eax
 447:	50                   	push   %eax
 448:	57                   	push   %edi
 449:	e8 12 03 00 00       	call   760 <stat>
 44e:	83 c4 10             	add    $0x10,%esp
 451:	85 c0                	test   %eax,%eax
 453:	0f 88 07 01 00 00    	js     560 <cpAll+0x230>
				printf(2, "cp: cannot stat %s\n", buf);
				continue;
			}
		//printf(1, "%s %d %d %d %s\n", fmtname(buf), st.type, st.ino, st.size, buf);
			char *temp = fmtname(buf);
 459:	83 ec 0c             	sub    $0xc,%esp
 45c:	57                   	push   %edi
 45d:	e8 1e fd ff ff       	call   180 <fmtname>
		//printf(1,"%d %d %s\n",strcmp(temp,"."),strcmp(temp,".."),temp);
			if(strcmp(temp,".")==32 || strcmp(temp,"..")==-14 || strcmp(temp,".")==46 || strcmp(temp,"..")==32){
 462:	59                   	pop    %ecx
 463:	5a                   	pop    %edx
 464:	68 b3 0d 00 00       	push   $0xdb3
 469:	50                   	push   %eax
 46a:	89 85 d4 f9 ff ff    	mov    %eax,-0x62c(%ebp)
 470:	e8 9b 01 00 00       	call   610 <strcmp>
 475:	83 c4 10             	add    $0x10,%esp
 478:	83 f8 20             	cmp    $0x20,%eax
 47b:	74 83                	je     400 <cpAll+0xd0>
 47d:	83 ec 08             	sub    $0x8,%esp
 480:	68 b2 0d 00 00       	push   $0xdb2
 485:	ff b5 d4 f9 ff ff    	pushl  -0x62c(%ebp)
 48b:	e8 80 01 00 00       	call   610 <strcmp>
 490:	83 c4 10             	add    $0x10,%esp
 493:	83 f8 f2             	cmp    $0xfffffff2,%eax
 496:	0f 84 64 ff ff ff    	je     400 <cpAll+0xd0>
 49c:	83 ec 08             	sub    $0x8,%esp
 49f:	68 b3 0d 00 00       	push   $0xdb3
 4a4:	ff b5 d4 f9 ff ff    	pushl  -0x62c(%ebp)
 4aa:	e8 61 01 00 00       	call   610 <strcmp>
 4af:	83 c4 10             	add    $0x10,%esp
 4b2:	83 f8 2e             	cmp    $0x2e,%eax
 4b5:	0f 84 45 ff ff ff    	je     400 <cpAll+0xd0>
 4bb:	83 ec 08             	sub    $0x8,%esp
 4be:	68 b2 0d 00 00       	push   $0xdb2
 4c3:	ff b5 d4 f9 ff ff    	pushl  -0x62c(%ebp)
 4c9:	e8 42 01 00 00       	call   610 <strcmp>
 4ce:	83 c4 10             	add    $0x10,%esp
 4d1:	83 f8 20             	cmp    $0x20,%eax
 4d4:	0f 84 26 ff ff ff    	je     400 <cpAll+0xd0>
		//printf(1,"Skipped %s\n",temp);
				continue;
			} 
			printf(1,"%s\n",buf);
 4da:	83 ec 04             	sub    $0x4,%esp
 4dd:	57                   	push   %edi
 4de:	68 90 0d 00 00       	push   $0xd90
 4e3:	6a 01                	push   $0x1
 4e5:	e8 86 04 00 00       	call   970 <printf>
			strcpy(tempDes,destination);
 4ea:	58                   	pop    %eax
 4eb:	8d 8d 00 fc ff ff    	lea    -0x400(%ebp),%ecx
 4f1:	5a                   	pop    %edx
 4f2:	ff 75 0c             	pushl  0xc(%ebp)
 4f5:	51                   	push   %ecx
 4f6:	e8 e5 00 00 00       	call   5e0 <strcpy>
			strcats(tempDes,"/");
 4fb:	59                   	pop    %ecx
 4fc:	8d 8d 00 fc ff ff    	lea    -0x400(%ebp),%ecx
 502:	58                   	pop    %eax
 503:	68 b5 0d 00 00       	push   $0xdb5
 508:	51                   	push   %ecx
 509:	e8 d2 fb ff ff       	call   e0 <strcats>
			strcats(tempDes,temp);
 50e:	58                   	pop    %eax
 50f:	8d 85 00 fc ff ff    	lea    -0x400(%ebp),%eax
 515:	5a                   	pop    %edx
 516:	ff b5 d4 f9 ff ff    	pushl  -0x62c(%ebp)
 51c:	50                   	push   %eax
 51d:	e8 be fb ff ff       	call   e0 <strcats>
			//printf(1,"%s\n",tempDes);
			if(st.type == T_FILE){
 522:	83 c4 10             	add    $0x10,%esp
 525:	66 83 bd ec f9 ff ff 	cmpw   $0x2,-0x614(%ebp)
 52c:	02 
 52d:	0f 84 8f 00 00 00    	je     5c2 <cpAll+0x292>
				//cpFile(buf,tempDes);
				cpHardLink(buf,tempDes);
			}else if(mode == 1){
 533:	83 7d 10 01          	cmpl   $0x1,0x10(%ebp)
 537:	0f 85 c3 fe ff ff    	jne    400 <cpAll+0xd0>
				cpAll(buf,tempDes,mode);
 53d:	8d 85 00 fc ff ff    	lea    -0x400(%ebp),%eax
 543:	83 ec 04             	sub    $0x4,%esp
 546:	6a 01                	push   $0x1
 548:	50                   	push   %eax
 549:	57                   	push   %edi
 54a:	e8 e1 fd ff ff       	call   330 <cpAll>
 54f:	83 c4 10             	add    $0x10,%esp
 552:	e9 a9 fe ff ff       	jmp    400 <cpAll+0xd0>
 557:	89 f6                	mov    %esi,%esi
 559:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
			if(de.inum == 0)
				continue;
			memmove(p, de.name, DIRSIZ);
			p[DIRSIZ] = 0;
			if(stat(buf, &st) < 0){
				printf(2, "cp: cannot stat %s\n", buf);
 560:	83 ec 04             	sub    $0x4,%esp
 563:	57                   	push   %edi
 564:	68 94 0d 00 00       	push   $0xd94
 569:	6a 02                	push   $0x2
 56b:	e8 00 04 00 00       	call   970 <printf>
				continue;
 570:	83 c4 10             	add    $0x10,%esp
 573:	e9 88 fe ff ff       	jmp    400 <cpAll+0xd0>
 578:	90                   	nop
 579:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	struct dirent de;
	struct stat st;
	mkdir(destination);
	chdir(destination);
	if((fd = open(source, 0)) < 0){
		printf(2, "cp: cannot open %s\n", source);
 580:	83 ec 04             	sub    $0x4,%esp
 583:	56                   	push   %esi
 584:	68 80 0d 00 00       	push   $0xd80
 589:	6a 02                	push   $0x2
 58b:	e8 e0 03 00 00       	call   970 <printf>
		return 0;
 590:	83 c4 10             	add    $0x10,%esp
		}
		break;
	}
	close(fd);
	return 1;
}
 593:	8d 65 f4             	lea    -0xc(%ebp),%esp
	struct stat st;
	mkdir(destination);
	chdir(destination);
	if((fd = open(source, 0)) < 0){
		printf(2, "cp: cannot open %s\n", source);
		return 0;
 596:	31 c0                	xor    %eax,%eax
		}
		break;
	}
	close(fd);
	return 1;
}
 598:	5b                   	pop    %ebx
 599:	5e                   	pop    %esi
 59a:	5f                   	pop    %edi
 59b:	5d                   	pop    %ebp
 59c:	c3                   	ret    
 59d:	8d 76 00             	lea    0x0(%esi),%esi
		printf(2, "cp: cannot open %s\n", source);
		return 0;
	}

	if(fstat(fd, &st) < 0){
		printf(2, "cp: cannot stat %s\n", source);
 5a0:	83 ec 04             	sub    $0x4,%esp
 5a3:	56                   	push   %esi
 5a4:	68 94 0d 00 00       	push   $0xd94
 5a9:	6a 02                	push   $0x2
 5ab:	e8 c0 03 00 00       	call   970 <printf>
		close(fd);
 5b0:	89 1c 24             	mov    %ebx,(%esp)
 5b3:	e8 92 02 00 00       	call   84a <close>
		return 0;
 5b8:	83 c4 10             	add    $0x10,%esp
 5bb:	31 c0                	xor    %eax,%eax
 5bd:	e9 f6 fd ff ff       	jmp    3b8 <cpAll+0x88>
			strcats(tempDes,"/");
			strcats(tempDes,temp);
			//printf(1,"%s\n",tempDes);
			if(st.type == T_FILE){
				//cpFile(buf,tempDes);
				cpHardLink(buf,tempDes);
 5c2:	8d 85 00 fc ff ff    	lea    -0x400(%ebp),%eax
 5c8:	83 ec 08             	sub    $0x8,%esp
 5cb:	50                   	push   %eax
 5cc:	57                   	push   %edi
 5cd:	e8 1e fd ff ff       	call   2f0 <cpHardLink>
 5d2:	83 c4 10             	add    $0x10,%esp
 5d5:	e9 26 fe ff ff       	jmp    400 <cpAll+0xd0>
 5da:	66 90                	xchg   %ax,%ax
 5dc:	66 90                	xchg   %ax,%ax
 5de:	66 90                	xchg   %ax,%ax

000005e0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
 5e3:	53                   	push   %ebx
 5e4:	8b 45 08             	mov    0x8(%ebp),%eax
 5e7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 5ea:	89 c2                	mov    %eax,%edx
 5ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5f0:	83 c1 01             	add    $0x1,%ecx
 5f3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 5f7:	83 c2 01             	add    $0x1,%edx
 5fa:	84 db                	test   %bl,%bl
 5fc:	88 5a ff             	mov    %bl,-0x1(%edx)
 5ff:	75 ef                	jne    5f0 <strcpy+0x10>
    ;
  return os;
}
 601:	5b                   	pop    %ebx
 602:	5d                   	pop    %ebp
 603:	c3                   	ret    
 604:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 60a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000610 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	56                   	push   %esi
 614:	53                   	push   %ebx
 615:	8b 55 08             	mov    0x8(%ebp),%edx
 618:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 61b:	0f b6 02             	movzbl (%edx),%eax
 61e:	0f b6 19             	movzbl (%ecx),%ebx
 621:	84 c0                	test   %al,%al
 623:	75 1e                	jne    643 <strcmp+0x33>
 625:	eb 29                	jmp    650 <strcmp+0x40>
 627:	89 f6                	mov    %esi,%esi
 629:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 630:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 633:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 636:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 639:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 63d:	84 c0                	test   %al,%al
 63f:	74 0f                	je     650 <strcmp+0x40>
 641:	89 f1                	mov    %esi,%ecx
 643:	38 d8                	cmp    %bl,%al
 645:	74 e9                	je     630 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 647:	29 d8                	sub    %ebx,%eax
}
 649:	5b                   	pop    %ebx
 64a:	5e                   	pop    %esi
 64b:	5d                   	pop    %ebp
 64c:	c3                   	ret    
 64d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 650:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 652:	29 d8                	sub    %ebx,%eax
}
 654:	5b                   	pop    %ebx
 655:	5e                   	pop    %esi
 656:	5d                   	pop    %ebp
 657:	c3                   	ret    
 658:	90                   	nop
 659:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000660 <strlen>:

uint
strlen(char *s)
{
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 666:	80 39 00             	cmpb   $0x0,(%ecx)
 669:	74 12                	je     67d <strlen+0x1d>
 66b:	31 d2                	xor    %edx,%edx
 66d:	8d 76 00             	lea    0x0(%esi),%esi
 670:	83 c2 01             	add    $0x1,%edx
 673:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 677:	89 d0                	mov    %edx,%eax
 679:	75 f5                	jne    670 <strlen+0x10>
    ;
  return n;
}
 67b:	5d                   	pop    %ebp
 67c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 67d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 67f:	5d                   	pop    %ebp
 680:	c3                   	ret    
 681:	eb 0d                	jmp    690 <memset>
 683:	90                   	nop
 684:	90                   	nop
 685:	90                   	nop
 686:	90                   	nop
 687:	90                   	nop
 688:	90                   	nop
 689:	90                   	nop
 68a:	90                   	nop
 68b:	90                   	nop
 68c:	90                   	nop
 68d:	90                   	nop
 68e:	90                   	nop
 68f:	90                   	nop

00000690 <memset>:

void*
memset(void *dst, int c, uint n)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	57                   	push   %edi
 694:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 697:	8b 4d 10             	mov    0x10(%ebp),%ecx
 69a:	8b 45 0c             	mov    0xc(%ebp),%eax
 69d:	89 d7                	mov    %edx,%edi
 69f:	fc                   	cld    
 6a0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 6a2:	89 d0                	mov    %edx,%eax
 6a4:	5f                   	pop    %edi
 6a5:	5d                   	pop    %ebp
 6a6:	c3                   	ret    
 6a7:	89 f6                	mov    %esi,%esi
 6a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006b0 <strchr>:

char*
strchr(const char *s, char c)
{
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	53                   	push   %ebx
 6b4:	8b 45 08             	mov    0x8(%ebp),%eax
 6b7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 6ba:	0f b6 10             	movzbl (%eax),%edx
 6bd:	84 d2                	test   %dl,%dl
 6bf:	74 1d                	je     6de <strchr+0x2e>
    if(*s == c)
 6c1:	38 d3                	cmp    %dl,%bl
 6c3:	89 d9                	mov    %ebx,%ecx
 6c5:	75 0d                	jne    6d4 <strchr+0x24>
 6c7:	eb 17                	jmp    6e0 <strchr+0x30>
 6c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6d0:	38 ca                	cmp    %cl,%dl
 6d2:	74 0c                	je     6e0 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 6d4:	83 c0 01             	add    $0x1,%eax
 6d7:	0f b6 10             	movzbl (%eax),%edx
 6da:	84 d2                	test   %dl,%dl
 6dc:	75 f2                	jne    6d0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 6de:	31 c0                	xor    %eax,%eax
}
 6e0:	5b                   	pop    %ebx
 6e1:	5d                   	pop    %ebp
 6e2:	c3                   	ret    
 6e3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 6e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006f0 <gets>:

char*
gets(char *buf, int max)
{
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
 6f3:	57                   	push   %edi
 6f4:	56                   	push   %esi
 6f5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 6f6:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 6f8:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
 6fb:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 6fe:	eb 29                	jmp    729 <gets+0x39>
    cc = read(0, &c, 1);
 700:	83 ec 04             	sub    $0x4,%esp
 703:	6a 01                	push   $0x1
 705:	57                   	push   %edi
 706:	6a 00                	push   $0x0
 708:	e8 2d 01 00 00       	call   83a <read>
    if(cc < 1)
 70d:	83 c4 10             	add    $0x10,%esp
 710:	85 c0                	test   %eax,%eax
 712:	7e 1d                	jle    731 <gets+0x41>
      break;
    buf[i++] = c;
 714:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 718:	8b 55 08             	mov    0x8(%ebp),%edx
 71b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 71d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 71f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 723:	74 1b                	je     740 <gets+0x50>
 725:	3c 0d                	cmp    $0xd,%al
 727:	74 17                	je     740 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 729:	8d 5e 01             	lea    0x1(%esi),%ebx
 72c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 72f:	7c cf                	jl     700 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 731:	8b 45 08             	mov    0x8(%ebp),%eax
 734:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 738:	8d 65 f4             	lea    -0xc(%ebp),%esp
 73b:	5b                   	pop    %ebx
 73c:	5e                   	pop    %esi
 73d:	5f                   	pop    %edi
 73e:	5d                   	pop    %ebp
 73f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 740:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 743:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 745:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 749:	8d 65 f4             	lea    -0xc(%ebp),%esp
 74c:	5b                   	pop    %ebx
 74d:	5e                   	pop    %esi
 74e:	5f                   	pop    %edi
 74f:	5d                   	pop    %ebp
 750:	c3                   	ret    
 751:	eb 0d                	jmp    760 <stat>
 753:	90                   	nop
 754:	90                   	nop
 755:	90                   	nop
 756:	90                   	nop
 757:	90                   	nop
 758:	90                   	nop
 759:	90                   	nop
 75a:	90                   	nop
 75b:	90                   	nop
 75c:	90                   	nop
 75d:	90                   	nop
 75e:	90                   	nop
 75f:	90                   	nop

00000760 <stat>:

int
stat(char *n, struct stat *st)
{
 760:	55                   	push   %ebp
 761:	89 e5                	mov    %esp,%ebp
 763:	56                   	push   %esi
 764:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 765:	83 ec 08             	sub    $0x8,%esp
 768:	6a 00                	push   $0x0
 76a:	ff 75 08             	pushl  0x8(%ebp)
 76d:	e8 f0 00 00 00       	call   862 <open>
  if(fd < 0)
 772:	83 c4 10             	add    $0x10,%esp
 775:	85 c0                	test   %eax,%eax
 777:	78 27                	js     7a0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 779:	83 ec 08             	sub    $0x8,%esp
 77c:	ff 75 0c             	pushl  0xc(%ebp)
 77f:	89 c3                	mov    %eax,%ebx
 781:	50                   	push   %eax
 782:	e8 f3 00 00 00       	call   87a <fstat>
 787:	89 c6                	mov    %eax,%esi
  close(fd);
 789:	89 1c 24             	mov    %ebx,(%esp)
 78c:	e8 b9 00 00 00       	call   84a <close>
  return r;
 791:	83 c4 10             	add    $0x10,%esp
 794:	89 f0                	mov    %esi,%eax
}
 796:	8d 65 f8             	lea    -0x8(%ebp),%esp
 799:	5b                   	pop    %ebx
 79a:	5e                   	pop    %esi
 79b:	5d                   	pop    %ebp
 79c:	c3                   	ret    
 79d:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 7a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 7a5:	eb ef                	jmp    796 <stat+0x36>
 7a7:	89 f6                	mov    %esi,%esi
 7a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000007b0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 7b0:	55                   	push   %ebp
 7b1:	89 e5                	mov    %esp,%ebp
 7b3:	53                   	push   %ebx
 7b4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 7b7:	0f be 11             	movsbl (%ecx),%edx
 7ba:	8d 42 d0             	lea    -0x30(%edx),%eax
 7bd:	3c 09                	cmp    $0x9,%al
 7bf:	b8 00 00 00 00       	mov    $0x0,%eax
 7c4:	77 1f                	ja     7e5 <atoi+0x35>
 7c6:	8d 76 00             	lea    0x0(%esi),%esi
 7c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 7d0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 7d3:	83 c1 01             	add    $0x1,%ecx
 7d6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 7da:	0f be 11             	movsbl (%ecx),%edx
 7dd:	8d 5a d0             	lea    -0x30(%edx),%ebx
 7e0:	80 fb 09             	cmp    $0x9,%bl
 7e3:	76 eb                	jbe    7d0 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
 7e5:	5b                   	pop    %ebx
 7e6:	5d                   	pop    %ebp
 7e7:	c3                   	ret    
 7e8:	90                   	nop
 7e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000007f0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 7f0:	55                   	push   %ebp
 7f1:	89 e5                	mov    %esp,%ebp
 7f3:	56                   	push   %esi
 7f4:	53                   	push   %ebx
 7f5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 7f8:	8b 45 08             	mov    0x8(%ebp),%eax
 7fb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 7fe:	85 db                	test   %ebx,%ebx
 800:	7e 14                	jle    816 <memmove+0x26>
 802:	31 d2                	xor    %edx,%edx
 804:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 808:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 80c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 80f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 812:	39 da                	cmp    %ebx,%edx
 814:	75 f2                	jne    808 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 816:	5b                   	pop    %ebx
 817:	5e                   	pop    %esi
 818:	5d                   	pop    %ebp
 819:	c3                   	ret    

0000081a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 81a:	b8 01 00 00 00       	mov    $0x1,%eax
 81f:	cd 40                	int    $0x40
 821:	c3                   	ret    

00000822 <exit>:
SYSCALL(exit)
 822:	b8 02 00 00 00       	mov    $0x2,%eax
 827:	cd 40                	int    $0x40
 829:	c3                   	ret    

0000082a <wait>:
SYSCALL(wait)
 82a:	b8 03 00 00 00       	mov    $0x3,%eax
 82f:	cd 40                	int    $0x40
 831:	c3                   	ret    

00000832 <pipe>:
SYSCALL(pipe)
 832:	b8 04 00 00 00       	mov    $0x4,%eax
 837:	cd 40                	int    $0x40
 839:	c3                   	ret    

0000083a <read>:
SYSCALL(read)
 83a:	b8 05 00 00 00       	mov    $0x5,%eax
 83f:	cd 40                	int    $0x40
 841:	c3                   	ret    

00000842 <write>:
SYSCALL(write)
 842:	b8 10 00 00 00       	mov    $0x10,%eax
 847:	cd 40                	int    $0x40
 849:	c3                   	ret    

0000084a <close>:
SYSCALL(close)
 84a:	b8 15 00 00 00       	mov    $0x15,%eax
 84f:	cd 40                	int    $0x40
 851:	c3                   	ret    

00000852 <kill>:
SYSCALL(kill)
 852:	b8 06 00 00 00       	mov    $0x6,%eax
 857:	cd 40                	int    $0x40
 859:	c3                   	ret    

0000085a <exec>:
SYSCALL(exec)
 85a:	b8 07 00 00 00       	mov    $0x7,%eax
 85f:	cd 40                	int    $0x40
 861:	c3                   	ret    

00000862 <open>:
SYSCALL(open)
 862:	b8 0f 00 00 00       	mov    $0xf,%eax
 867:	cd 40                	int    $0x40
 869:	c3                   	ret    

0000086a <mknod>:
SYSCALL(mknod)
 86a:	b8 11 00 00 00       	mov    $0x11,%eax
 86f:	cd 40                	int    $0x40
 871:	c3                   	ret    

00000872 <unlink>:
SYSCALL(unlink)
 872:	b8 12 00 00 00       	mov    $0x12,%eax
 877:	cd 40                	int    $0x40
 879:	c3                   	ret    

0000087a <fstat>:
SYSCALL(fstat)
 87a:	b8 08 00 00 00       	mov    $0x8,%eax
 87f:	cd 40                	int    $0x40
 881:	c3                   	ret    

00000882 <link>:
SYSCALL(link)
 882:	b8 13 00 00 00       	mov    $0x13,%eax
 887:	cd 40                	int    $0x40
 889:	c3                   	ret    

0000088a <mkdir>:
SYSCALL(mkdir)
 88a:	b8 14 00 00 00       	mov    $0x14,%eax
 88f:	cd 40                	int    $0x40
 891:	c3                   	ret    

00000892 <chdir>:
SYSCALL(chdir)
 892:	b8 09 00 00 00       	mov    $0x9,%eax
 897:	cd 40                	int    $0x40
 899:	c3                   	ret    

0000089a <dup>:
SYSCALL(dup)
 89a:	b8 0a 00 00 00       	mov    $0xa,%eax
 89f:	cd 40                	int    $0x40
 8a1:	c3                   	ret    

000008a2 <getpid>:
SYSCALL(getpid)
 8a2:	b8 0b 00 00 00       	mov    $0xb,%eax
 8a7:	cd 40                	int    $0x40
 8a9:	c3                   	ret    

000008aa <sbrk>:
SYSCALL(sbrk)
 8aa:	b8 0c 00 00 00       	mov    $0xc,%eax
 8af:	cd 40                	int    $0x40
 8b1:	c3                   	ret    

000008b2 <sleep>:
SYSCALL(sleep)
 8b2:	b8 0d 00 00 00       	mov    $0xd,%eax
 8b7:	cd 40                	int    $0x40
 8b9:	c3                   	ret    

000008ba <uptime>:
SYSCALL(uptime)
 8ba:	b8 0e 00 00 00       	mov    $0xe,%eax
 8bf:	cd 40                	int    $0x40
 8c1:	c3                   	ret    
 8c2:	66 90                	xchg   %ax,%ax
 8c4:	66 90                	xchg   %ax,%ax
 8c6:	66 90                	xchg   %ax,%ax
 8c8:	66 90                	xchg   %ax,%ax
 8ca:	66 90                	xchg   %ax,%ax
 8cc:	66 90                	xchg   %ax,%ax
 8ce:	66 90                	xchg   %ax,%ax

000008d0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 8d0:	55                   	push   %ebp
 8d1:	89 e5                	mov    %esp,%ebp
 8d3:	57                   	push   %edi
 8d4:	56                   	push   %esi
 8d5:	53                   	push   %ebx
 8d6:	89 c6                	mov    %eax,%esi
 8d8:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 8db:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8de:	85 db                	test   %ebx,%ebx
 8e0:	74 7e                	je     960 <printint+0x90>
 8e2:	89 d0                	mov    %edx,%eax
 8e4:	c1 e8 1f             	shr    $0x1f,%eax
 8e7:	84 c0                	test   %al,%al
 8e9:	74 75                	je     960 <printint+0x90>
    neg = 1;
    x = -xx;
 8eb:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 8ed:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 8f4:	f7 d8                	neg    %eax
 8f6:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 8f9:	31 ff                	xor    %edi,%edi
 8fb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 8fe:	89 ce                	mov    %ecx,%esi
 900:	eb 08                	jmp    90a <printint+0x3a>
 902:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 908:	89 cf                	mov    %ecx,%edi
 90a:	31 d2                	xor    %edx,%edx
 90c:	8d 4f 01             	lea    0x1(%edi),%ecx
 90f:	f7 f6                	div    %esi
 911:	0f b6 92 d8 0d 00 00 	movzbl 0xdd8(%edx),%edx
  }while((x /= base) != 0);
 918:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 91a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 91d:	75 e9                	jne    908 <printint+0x38>
  if(neg)
 91f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 922:	8b 75 c0             	mov    -0x40(%ebp),%esi
 925:	85 c0                	test   %eax,%eax
 927:	74 08                	je     931 <printint+0x61>
    buf[i++] = '-';
 929:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 92e:	8d 4f 02             	lea    0x2(%edi),%ecx
 931:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 935:	8d 76 00             	lea    0x0(%esi),%esi
 938:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 93b:	83 ec 04             	sub    $0x4,%esp
 93e:	83 ef 01             	sub    $0x1,%edi
 941:	6a 01                	push   $0x1
 943:	53                   	push   %ebx
 944:	56                   	push   %esi
 945:	88 45 d7             	mov    %al,-0x29(%ebp)
 948:	e8 f5 fe ff ff       	call   842 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 94d:	83 c4 10             	add    $0x10,%esp
 950:	39 df                	cmp    %ebx,%edi
 952:	75 e4                	jne    938 <printint+0x68>
    putc(fd, buf[i]);
}
 954:	8d 65 f4             	lea    -0xc(%ebp),%esp
 957:	5b                   	pop    %ebx
 958:	5e                   	pop    %esi
 959:	5f                   	pop    %edi
 95a:	5d                   	pop    %ebp
 95b:	c3                   	ret    
 95c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 960:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 962:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 969:	eb 8b                	jmp    8f6 <printint+0x26>
 96b:	90                   	nop
 96c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000970 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 970:	55                   	push   %ebp
 971:	89 e5                	mov    %esp,%ebp
 973:	57                   	push   %edi
 974:	56                   	push   %esi
 975:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 976:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 979:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 97c:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 97f:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 982:	89 45 d0             	mov    %eax,-0x30(%ebp)
 985:	0f b6 1e             	movzbl (%esi),%ebx
 988:	83 c6 01             	add    $0x1,%esi
 98b:	84 db                	test   %bl,%bl
 98d:	0f 84 b0 00 00 00    	je     a43 <printf+0xd3>
 993:	31 d2                	xor    %edx,%edx
 995:	eb 39                	jmp    9d0 <printf+0x60>
 997:	89 f6                	mov    %esi,%esi
 999:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 9a0:	83 f8 25             	cmp    $0x25,%eax
 9a3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 9a6:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 9ab:	74 18                	je     9c5 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 9ad:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 9b0:	83 ec 04             	sub    $0x4,%esp
 9b3:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 9b6:	6a 01                	push   $0x1
 9b8:	50                   	push   %eax
 9b9:	57                   	push   %edi
 9ba:	e8 83 fe ff ff       	call   842 <write>
 9bf:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 9c2:	83 c4 10             	add    $0x10,%esp
 9c5:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 9c8:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 9cc:	84 db                	test   %bl,%bl
 9ce:	74 73                	je     a43 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
 9d0:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 9d2:	0f be cb             	movsbl %bl,%ecx
 9d5:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 9d8:	74 c6                	je     9a0 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 9da:	83 fa 25             	cmp    $0x25,%edx
 9dd:	75 e6                	jne    9c5 <printf+0x55>
      if(c == 'd'){
 9df:	83 f8 64             	cmp    $0x64,%eax
 9e2:	0f 84 f8 00 00 00    	je     ae0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 9e8:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 9ee:	83 f9 70             	cmp    $0x70,%ecx
 9f1:	74 5d                	je     a50 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 9f3:	83 f8 73             	cmp    $0x73,%eax
 9f6:	0f 84 84 00 00 00    	je     a80 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 9fc:	83 f8 63             	cmp    $0x63,%eax
 9ff:	0f 84 ea 00 00 00    	je     aef <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 a05:	83 f8 25             	cmp    $0x25,%eax
 a08:	0f 84 c2 00 00 00    	je     ad0 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 a0e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 a11:	83 ec 04             	sub    $0x4,%esp
 a14:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 a18:	6a 01                	push   $0x1
 a1a:	50                   	push   %eax
 a1b:	57                   	push   %edi
 a1c:	e8 21 fe ff ff       	call   842 <write>
 a21:	83 c4 0c             	add    $0xc,%esp
 a24:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 a27:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 a2a:	6a 01                	push   $0x1
 a2c:	50                   	push   %eax
 a2d:	57                   	push   %edi
 a2e:	83 c6 01             	add    $0x1,%esi
 a31:	e8 0c fe ff ff       	call   842 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 a36:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 a3a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 a3d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 a3f:	84 db                	test   %bl,%bl
 a41:	75 8d                	jne    9d0 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 a43:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a46:	5b                   	pop    %ebx
 a47:	5e                   	pop    %esi
 a48:	5f                   	pop    %edi
 a49:	5d                   	pop    %ebp
 a4a:	c3                   	ret    
 a4b:	90                   	nop
 a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 a50:	83 ec 0c             	sub    $0xc,%esp
 a53:	b9 10 00 00 00       	mov    $0x10,%ecx
 a58:	6a 00                	push   $0x0
 a5a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 a5d:	89 f8                	mov    %edi,%eax
 a5f:	8b 13                	mov    (%ebx),%edx
 a61:	e8 6a fe ff ff       	call   8d0 <printint>
        ap++;
 a66:	89 d8                	mov    %ebx,%eax
 a68:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 a6b:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 a6d:	83 c0 04             	add    $0x4,%eax
 a70:	89 45 d0             	mov    %eax,-0x30(%ebp)
 a73:	e9 4d ff ff ff       	jmp    9c5 <printf+0x55>
 a78:	90                   	nop
 a79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 a80:	8b 45 d0             	mov    -0x30(%ebp),%eax
 a83:	8b 18                	mov    (%eax),%ebx
        ap++;
 a85:	83 c0 04             	add    $0x4,%eax
 a88:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 a8b:	b8 d1 0d 00 00       	mov    $0xdd1,%eax
 a90:	85 db                	test   %ebx,%ebx
 a92:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 a95:	0f b6 03             	movzbl (%ebx),%eax
 a98:	84 c0                	test   %al,%al
 a9a:	74 23                	je     abf <printf+0x14f>
 a9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 aa0:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 aa3:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 aa6:	83 ec 04             	sub    $0x4,%esp
 aa9:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 aab:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 aae:	50                   	push   %eax
 aaf:	57                   	push   %edi
 ab0:	e8 8d fd ff ff       	call   842 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 ab5:	0f b6 03             	movzbl (%ebx),%eax
 ab8:	83 c4 10             	add    $0x10,%esp
 abb:	84 c0                	test   %al,%al
 abd:	75 e1                	jne    aa0 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 abf:	31 d2                	xor    %edx,%edx
 ac1:	e9 ff fe ff ff       	jmp    9c5 <printf+0x55>
 ac6:	8d 76 00             	lea    0x0(%esi),%esi
 ac9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 ad0:	83 ec 04             	sub    $0x4,%esp
 ad3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 ad6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 ad9:	6a 01                	push   $0x1
 adb:	e9 4c ff ff ff       	jmp    a2c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 ae0:	83 ec 0c             	sub    $0xc,%esp
 ae3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 ae8:	6a 01                	push   $0x1
 aea:	e9 6b ff ff ff       	jmp    a5a <printf+0xea>
 aef:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 af2:	83 ec 04             	sub    $0x4,%esp
 af5:	8b 03                	mov    (%ebx),%eax
 af7:	6a 01                	push   $0x1
 af9:	88 45 e4             	mov    %al,-0x1c(%ebp)
 afc:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 aff:	50                   	push   %eax
 b00:	57                   	push   %edi
 b01:	e8 3c fd ff ff       	call   842 <write>
 b06:	e9 5b ff ff ff       	jmp    a66 <printf+0xf6>
 b0b:	66 90                	xchg   %ax,%ax
 b0d:	66 90                	xchg   %ax,%ax
 b0f:	90                   	nop

00000b10 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 b10:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b11:	a1 a0 11 00 00       	mov    0x11a0,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 b16:	89 e5                	mov    %esp,%ebp
 b18:	57                   	push   %edi
 b19:	56                   	push   %esi
 b1a:	53                   	push   %ebx
 b1b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b1e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 b20:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b23:	39 c8                	cmp    %ecx,%eax
 b25:	73 19                	jae    b40 <free+0x30>
 b27:	89 f6                	mov    %esi,%esi
 b29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 b30:	39 d1                	cmp    %edx,%ecx
 b32:	72 1c                	jb     b50 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b34:	39 d0                	cmp    %edx,%eax
 b36:	73 18                	jae    b50 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 b38:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b3a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b3c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b3e:	72 f0                	jb     b30 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b40:	39 d0                	cmp    %edx,%eax
 b42:	72 f4                	jb     b38 <free+0x28>
 b44:	39 d1                	cmp    %edx,%ecx
 b46:	73 f0                	jae    b38 <free+0x28>
 b48:	90                   	nop
 b49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 b50:	8b 73 fc             	mov    -0x4(%ebx),%esi
 b53:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 b56:	39 d7                	cmp    %edx,%edi
 b58:	74 19                	je     b73 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 b5a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 b5d:	8b 50 04             	mov    0x4(%eax),%edx
 b60:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 b63:	39 f1                	cmp    %esi,%ecx
 b65:	74 23                	je     b8a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 b67:	89 08                	mov    %ecx,(%eax)
  freep = p;
 b69:	a3 a0 11 00 00       	mov    %eax,0x11a0
}
 b6e:	5b                   	pop    %ebx
 b6f:	5e                   	pop    %esi
 b70:	5f                   	pop    %edi
 b71:	5d                   	pop    %ebp
 b72:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 b73:	03 72 04             	add    0x4(%edx),%esi
 b76:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 b79:	8b 10                	mov    (%eax),%edx
 b7b:	8b 12                	mov    (%edx),%edx
 b7d:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 b80:	8b 50 04             	mov    0x4(%eax),%edx
 b83:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 b86:	39 f1                	cmp    %esi,%ecx
 b88:	75 dd                	jne    b67 <free+0x57>
    p->s.size += bp->s.size;
 b8a:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 b8d:	a3 a0 11 00 00       	mov    %eax,0x11a0
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 b92:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 b95:	8b 53 f8             	mov    -0x8(%ebx),%edx
 b98:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 b9a:	5b                   	pop    %ebx
 b9b:	5e                   	pop    %esi
 b9c:	5f                   	pop    %edi
 b9d:	5d                   	pop    %ebp
 b9e:	c3                   	ret    
 b9f:	90                   	nop

00000ba0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 ba0:	55                   	push   %ebp
 ba1:	89 e5                	mov    %esp,%ebp
 ba3:	57                   	push   %edi
 ba4:	56                   	push   %esi
 ba5:	53                   	push   %ebx
 ba6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ba9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 bac:	8b 15 a0 11 00 00    	mov    0x11a0,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 bb2:	8d 78 07             	lea    0x7(%eax),%edi
 bb5:	c1 ef 03             	shr    $0x3,%edi
 bb8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 bbb:	85 d2                	test   %edx,%edx
 bbd:	0f 84 a3 00 00 00    	je     c66 <malloc+0xc6>
 bc3:	8b 02                	mov    (%edx),%eax
 bc5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 bc8:	39 cf                	cmp    %ecx,%edi
 bca:	76 74                	jbe    c40 <malloc+0xa0>
 bcc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 bd2:	be 00 10 00 00       	mov    $0x1000,%esi
 bd7:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 bde:	0f 43 f7             	cmovae %edi,%esi
 be1:	ba 00 80 00 00       	mov    $0x8000,%edx
 be6:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 bec:	0f 46 da             	cmovbe %edx,%ebx
 bef:	eb 10                	jmp    c01 <malloc+0x61>
 bf1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 bf8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 bfa:	8b 48 04             	mov    0x4(%eax),%ecx
 bfd:	39 cf                	cmp    %ecx,%edi
 bff:	76 3f                	jbe    c40 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 c01:	39 05 a0 11 00 00    	cmp    %eax,0x11a0
 c07:	89 c2                	mov    %eax,%edx
 c09:	75 ed                	jne    bf8 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 c0b:	83 ec 0c             	sub    $0xc,%esp
 c0e:	53                   	push   %ebx
 c0f:	e8 96 fc ff ff       	call   8aa <sbrk>
  if(p == (char*)-1)
 c14:	83 c4 10             	add    $0x10,%esp
 c17:	83 f8 ff             	cmp    $0xffffffff,%eax
 c1a:	74 1c                	je     c38 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 c1c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 c1f:	83 ec 0c             	sub    $0xc,%esp
 c22:	83 c0 08             	add    $0x8,%eax
 c25:	50                   	push   %eax
 c26:	e8 e5 fe ff ff       	call   b10 <free>
  return freep;
 c2b:	8b 15 a0 11 00 00    	mov    0x11a0,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 c31:	83 c4 10             	add    $0x10,%esp
 c34:	85 d2                	test   %edx,%edx
 c36:	75 c0                	jne    bf8 <malloc+0x58>
        return 0;
 c38:	31 c0                	xor    %eax,%eax
 c3a:	eb 1c                	jmp    c58 <malloc+0xb8>
 c3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 c40:	39 cf                	cmp    %ecx,%edi
 c42:	74 1c                	je     c60 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 c44:	29 f9                	sub    %edi,%ecx
 c46:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 c49:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 c4c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 c4f:	89 15 a0 11 00 00    	mov    %edx,0x11a0
      return (void*)(p + 1);
 c55:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 c58:	8d 65 f4             	lea    -0xc(%ebp),%esp
 c5b:	5b                   	pop    %ebx
 c5c:	5e                   	pop    %esi
 c5d:	5f                   	pop    %edi
 c5e:	5d                   	pop    %ebp
 c5f:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 c60:	8b 08                	mov    (%eax),%ecx
 c62:	89 0a                	mov    %ecx,(%edx)
 c64:	eb e9                	jmp    c4f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 c66:	c7 05 a0 11 00 00 a4 	movl   $0x11a4,0x11a0
 c6d:	11 00 00 
 c70:	c7 05 a4 11 00 00 a4 	movl   $0x11a4,0x11a4
 c77:	11 00 00 
    base.s.size = 0;
 c7a:	b8 a4 11 00 00       	mov    $0x11a4,%eax
 c7f:	c7 05 a8 11 00 00 00 	movl   $0x0,0x11a8
 c86:	00 00 00 
 c89:	e9 3e ff ff ff       	jmp    bcc <malloc+0x2c>
