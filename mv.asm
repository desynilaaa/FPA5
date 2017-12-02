
_mv:     file format elf32-i386


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
   d:	51                   	push   %ecx
   e:	83 ec 04             	sub    $0x4,%esp
  11:	8b 01                	mov    (%ecx),%eax
  13:	8b 51 04             	mov    0x4(%ecx),%edx
  

  if(argc < 3){
  16:	83 f8 02             	cmp    $0x2,%eax
  19:	7e 26                	jle    41 <main+0x41>
    printf(1, "MV require atleast 3 arguments [src] [destination]\n");
    exit();
  }else if(argc > 3){
  1b:	83 f8 03             	cmp    $0x3,%eax
  1e:	74 5b                	je     7b <main+0x7b>
    if(argv[1][0] == '*'){
  20:	8b 42 04             	mov    0x4(%edx),%eax
  23:	80 38 2a             	cmpb   $0x2a,(%eax)
  26:	74 2c                	je     54 <main+0x54>
      if(moveAll(argv[2],argv[3])<=0){
        printf(1,"Unable to perform mv * operation!\n");
      }
    }else{
      printf(1,"Unknown command!\n");
  28:	83 ec 08             	sub    $0x8,%esp
  2b:	68 4d 0c 00 00       	push   $0xc4d
  30:	6a 01                	push   $0x1
  32:	e8 f9 07 00 00       	call   830 <printf>
    }
  }
  printf(1,"FInished current Operation!\n");

  exit();
  37:	8b 4d fc             	mov    -0x4(%ebp),%ecx
  3a:	31 c0                	xor    %eax,%eax
  3c:	c9                   	leave  
  3d:	8d 61 fc             	lea    -0x4(%ecx),%esp
  40:	c3                   	ret    
}
int main(int argc, char *argv[]){
  

  if(argc < 3){
    printf(1, "MV require atleast 3 arguments [src] [destination]\n");
  41:	50                   	push   %eax
  42:	50                   	push   %eax
  43:	68 84 0b 00 00       	push   $0xb84
  48:	6a 01                	push   $0x1
  4a:	e8 e1 07 00 00       	call   830 <printf>
    exit();
  4f:	e8 8e 06 00 00       	call   6e2 <exit>
  }else if(argc > 3){
    if(argv[1][0] == '*'){
      if(moveAll(argv[2],argv[3])<=0){
  54:	50                   	push   %eax
  55:	50                   	push   %eax
  56:	ff 72 0c             	pushl  0xc(%edx)
  59:	ff 72 08             	pushl  0x8(%edx)
  5c:	e8 af 01 00 00       	call   210 <moveAll>
  61:	83 c4 10             	add    $0x10,%esp
  64:	85 c0                	test   %eax,%eax
  66:	7e 3a                	jle    a2 <main+0xa2>
  }else{
    if(moveFile(argv[1],argv[2])<=0){
      printf(1,"Failed to perform move operation!\n");
    }
  }
  printf(1,"FInished current Operation!\n");
  68:	50                   	push   %eax
  69:	50                   	push   %eax
  6a:	68 5f 0c 00 00       	push   $0xc5f
  6f:	6a 01                	push   $0x1
  71:	e8 ba 07 00 00       	call   830 <printf>

  exit();
  76:	e8 67 06 00 00       	call   6e2 <exit>
    }else{
      printf(1,"Unknown command!\n");
      return 0;
    }
  }else{
    if(moveFile(argv[1],argv[2])<=0){
  7b:	51                   	push   %ecx
  7c:	51                   	push   %ecx
  7d:	ff 72 08             	pushl  0x8(%edx)
  80:	ff 72 04             	pushl  0x4(%edx)
  83:	e8 28 01 00 00       	call   1b0 <moveFile>
  88:	83 c4 10             	add    $0x10,%esp
  8b:	85 c0                	test   %eax,%eax
  8d:	7f d9                	jg     68 <main+0x68>
      printf(1,"Failed to perform move operation!\n");
  8f:	52                   	push   %edx
  90:	52                   	push   %edx
  91:	68 dc 0b 00 00       	push   $0xbdc
  96:	6a 01                	push   $0x1
  98:	e8 93 07 00 00       	call   830 <printf>
  9d:	83 c4 10             	add    $0x10,%esp
  a0:	eb c6                	jmp    68 <main+0x68>
    printf(1, "MV require atleast 3 arguments [src] [destination]\n");
    exit();
  }else if(argc > 3){
    if(argv[1][0] == '*'){
      if(moveAll(argv[2],argv[3])<=0){
        printf(1,"Unable to perform mv * operation!\n");
  a2:	50                   	push   %eax
  a3:	50                   	push   %eax
  a4:	68 b8 0b 00 00       	push   $0xbb8
  a9:	6a 01                	push   $0x1
  ab:	e8 80 07 00 00       	call   830 <printf>
  b0:	83 c4 10             	add    $0x10,%esp
  b3:	eb b3                	jmp    68 <main+0x68>
  b5:	66 90                	xchg   %ax,%ax
  b7:	66 90                	xchg   %ax,%ax
  b9:	66 90                	xchg   %ax,%ax
  bb:	66 90                	xchg   %ax,%ax
  bd:	66 90                	xchg   %ax,%ax
  bf:	90                   	nop

000000c0 <strcats>:
#include "stat.h"
#include "user.h"
#include "fcntl.h"
#include "fs.h"
//int totalRecursion = 0;
char* strcats(char* destination, char* source){
  c0:	55                   	push   %ebp
  c1:	89 e5                	mov    %esp,%ebp
  c3:	56                   	push   %esi
  c4:	53                   	push   %ebx
  c5:	8b 75 08             	mov    0x8(%ebp),%esi
  c8:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  int indexs = strlen(destination);
  cb:	83 ec 0c             	sub    $0xc,%esp
  ce:	56                   	push   %esi
  cf:	83 c3 01             	add    $0x1,%ebx
  d2:	e8 49 04 00 00       	call   520 <strlen>
  int i;
  for(i=0;source[i]!=' ';indexs++,i++){
  d7:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
  db:	83 c4 10             	add    $0x10,%esp
  de:	01 f0                	add    %esi,%eax
  e0:	80 fa 20             	cmp    $0x20,%dl
  e3:	74 18                	je     fd <strcats+0x3d>
  e5:	8d 76 00             	lea    0x0(%esi),%esi
    destination[indexs]=source[i];
  e8:	88 10                	mov    %dl,(%eax)
    destination[indexs+1]='\0';
  ea:	c6 40 01 00          	movb   $0x0,0x1(%eax)
  ee:	83 c3 01             	add    $0x1,%ebx
#include "fs.h"
//int totalRecursion = 0;
char* strcats(char* destination, char* source){
  int indexs = strlen(destination);
  int i;
  for(i=0;source[i]!=' ';indexs++,i++){
  f1:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
  f5:	83 c0 01             	add    $0x1,%eax
  f8:	80 fa 20             	cmp    $0x20,%dl
  fb:	75 eb                	jne    e8 <strcats+0x28>
    destination[indexs]=source[i];
    destination[indexs+1]='\0';
  }
  return destination;
}
  fd:	8d 65 f8             	lea    -0x8(%ebp),%esp
 100:	89 f0                	mov    %esi,%eax
 102:	5b                   	pop    %ebx
 103:	5e                   	pop    %esi
 104:	5d                   	pop    %ebp
 105:	c3                   	ret    
 106:	8d 76 00             	lea    0x0(%esi),%esi
 109:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000110 <fmtname>:
char* fmtname(char *path){
 110:	55                   	push   %ebp
 111:	89 e5                	mov    %esp,%ebp
 113:	56                   	push   %esi
 114:	53                   	push   %ebx
 115:	8b 5d 08             	mov    0x8(%ebp),%ebx
  static char buf[DIRSIZ+1];
  char *p;
  for(p=path+strlen(path); p >= path && *p != '/'; p--);
 118:	83 ec 0c             	sub    $0xc,%esp
 11b:	53                   	push   %ebx
 11c:	e8 ff 03 00 00       	call   520 <strlen>
 121:	83 c4 10             	add    $0x10,%esp
 124:	01 d8                	add    %ebx,%eax
 126:	73 0f                	jae    137 <fmtname+0x27>
 128:	eb 12                	jmp    13c <fmtname+0x2c>
 12a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 130:	83 e8 01             	sub    $0x1,%eax
 133:	39 c3                	cmp    %eax,%ebx
 135:	77 05                	ja     13c <fmtname+0x2c>
 137:	80 38 2f             	cmpb   $0x2f,(%eax)
 13a:	75 f4                	jne    130 <fmtname+0x20>
  p++;
 13c:	8d 58 01             	lea    0x1(%eax),%ebx
  if(strlen(p) >= DIRSIZ){
 13f:	83 ec 0c             	sub    $0xc,%esp
 142:	53                   	push   %ebx
 143:	e8 d8 03 00 00       	call   520 <strlen>
 148:	83 c4 10             	add    $0x10,%esp
 14b:	83 f8 0d             	cmp    $0xd,%eax
 14e:	77 4a                	ja     19a <fmtname+0x8a>
    return p;
  }
  memmove(buf, p, strlen(p));
 150:	83 ec 0c             	sub    $0xc,%esp
 153:	53                   	push   %ebx
 154:	e8 c7 03 00 00       	call   520 <strlen>
 159:	83 c4 0c             	add    $0xc,%esp
 15c:	50                   	push   %eax
 15d:	53                   	push   %ebx
 15e:	68 ec 0f 00 00       	push   $0xfec
 163:	e8 48 05 00 00       	call   6b0 <memmove>
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
 168:	89 1c 24             	mov    %ebx,(%esp)
 16b:	e8 b0 03 00 00       	call   520 <strlen>
 170:	89 1c 24             	mov    %ebx,(%esp)
 173:	89 c6                	mov    %eax,%esi
  return buf;
 175:	bb ec 0f 00 00       	mov    $0xfec,%ebx
  p++;
  if(strlen(p) >= DIRSIZ){
    return p;
  }
  memmove(buf, p, strlen(p));
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
 17a:	e8 a1 03 00 00       	call   520 <strlen>
 17f:	ba 0e 00 00 00       	mov    $0xe,%edx
 184:	83 c4 0c             	add    $0xc,%esp
 187:	05 ec 0f 00 00       	add    $0xfec,%eax
 18c:	29 f2                	sub    %esi,%edx
 18e:	52                   	push   %edx
 18f:	6a 20                	push   $0x20
 191:	50                   	push   %eax
 192:	e8 b9 03 00 00       	call   550 <memset>
  return buf;
 197:	83 c4 10             	add    $0x10,%esp
}
 19a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 19d:	89 d8                	mov    %ebx,%eax
 19f:	5b                   	pop    %ebx
 1a0:	5e                   	pop    %esi
 1a1:	5d                   	pop    %ebp
 1a2:	c3                   	ret    
 1a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000001b0 <moveFile>:
int moveFile(char* source,char* destination){
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	56                   	push   %esi
 1b4:	53                   	push   %ebx
 1b5:	8b 75 0c             	mov    0xc(%ebp),%esi
 1b8:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(link(source,destination) || unlink(source)<0){
 1bb:	83 ec 08             	sub    $0x8,%esp
 1be:	56                   	push   %esi
 1bf:	53                   	push   %ebx
 1c0:	e8 7d 05 00 00       	call   742 <link>
 1c5:	83 c4 10             	add    $0x10,%esp
 1c8:	85 c0                	test   %eax,%eax
 1ca:	75 24                	jne    1f0 <moveFile+0x40>
 1cc:	83 ec 0c             	sub    $0xc,%esp
 1cf:	53                   	push   %ebx
 1d0:	e8 5d 05 00 00       	call   732 <unlink>
 1d5:	83 c4 10             	add    $0x10,%esp
 1d8:	85 c0                	test   %eax,%eax
 1da:	78 14                	js     1f0 <moveFile+0x40>
    printf(1,"mv failed to perform move operation from %s to %s\n",source,destination);
    return 0;
  }
  return 1;
}
 1dc:	8d 65 f8             	lea    -0x8(%ebp),%esp
int moveFile(char* source,char* destination){
  if(link(source,destination) || unlink(source)<0){
    printf(1,"mv failed to perform move operation from %s to %s\n",source,destination);
    return 0;
  }
  return 1;
 1df:	b8 01 00 00 00       	mov    $0x1,%eax
}
 1e4:	5b                   	pop    %ebx
 1e5:	5e                   	pop    %esi
 1e6:	5d                   	pop    %ebp
 1e7:	c3                   	ret    
 1e8:	90                   	nop
 1e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  return buf;
}
int moveFile(char* source,char* destination){
  if(link(source,destination) || unlink(source)<0){
    printf(1,"mv failed to perform move operation from %s to %s\n",source,destination);
 1f0:	56                   	push   %esi
 1f1:	53                   	push   %ebx
 1f2:	68 50 0b 00 00       	push   $0xb50
 1f7:	6a 01                	push   $0x1
 1f9:	e8 32 06 00 00       	call   830 <printf>
 1fe:	83 c4 10             	add    $0x10,%esp
    return 0;
  }
  return 1;
}
 201:	8d 65 f8             	lea    -0x8(%ebp),%esp
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  return buf;
}
int moveFile(char* source,char* destination){
  if(link(source,destination) || unlink(source)<0){
    printf(1,"mv failed to perform move operation from %s to %s\n",source,destination);
 204:	31 c0                	xor    %eax,%eax
    return 0;
  }
  return 1;
}
 206:	5b                   	pop    %ebx
 207:	5e                   	pop    %esi
 208:	5d                   	pop    %ebp
 209:	c3                   	ret    
 20a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000210 <moveAll>:
int moveAll(char* source, char* destination){
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	57                   	push   %edi
 214:	56                   	push   %esi
 215:	53                   	push   %ebx
 216:	81 ec 38 06 00 00    	sub    $0x638,%esp
  char buf[512], *p,tempDes[1000];
  int fd;
  struct dirent de;
  struct stat st;
  mkdir(destination);
 21c:	ff 75 0c             	pushl  0xc(%ebp)
    printf(1,"mv failed to perform move operation from %s to %s\n",source,destination);
    return 0;
  }
  return 1;
}
int moveAll(char* source, char* destination){
 21f:	8b 75 08             	mov    0x8(%ebp),%esi
  char buf[512], *p,tempDes[1000];
  int fd;
  struct dirent de;
  struct stat st;
  mkdir(destination);
 222:	e8 23 05 00 00       	call   74a <mkdir>
  chdir(destination);
 227:	59                   	pop    %ecx
 228:	ff 75 0c             	pushl  0xc(%ebp)
 22b:	e8 22 05 00 00       	call   752 <chdir>
  if((fd = open(source, 0)) < 0){
 230:	5b                   	pop    %ebx
 231:	5f                   	pop    %edi
 232:	6a 00                	push   $0x0
 234:	56                   	push   %esi
 235:	e8 e8 04 00 00       	call   722 <open>
 23a:	83 c4 10             	add    $0x10,%esp
 23d:	85 c0                	test   %eax,%eax
 23f:	0f 88 fb 01 00 00    	js     440 <moveAll+0x230>
 245:	89 c3                	mov    %eax,%ebx
    printf(2, "ls: cannot open %s\n", source);
    return 0;
  }

  if(fstat(fd, &st) < 0){
 247:	8d 85 ec f9 ff ff    	lea    -0x614(%ebp),%eax
 24d:	83 ec 08             	sub    $0x8,%esp
 250:	50                   	push   %eax
 251:	53                   	push   %ebx
 252:	e8 e3 04 00 00       	call   73a <fstat>
 257:	83 c4 10             	add    $0x10,%esp
 25a:	85 c0                	test   %eax,%eax
 25c:	0f 88 fe 01 00 00    	js     460 <moveAll+0x250>
    printf(2, "ls: cannot stat %s\n", source);
    close(fd);
    return 0;
  }

  switch(st.type){
 262:	0f b7 85 ec f9 ff ff 	movzwl -0x614(%ebp),%eax
 269:	66 83 f8 01          	cmp    $0x1,%ax
 26d:	74 31                	je     2a0 <moveAll+0x90>
 26f:	66 83 f8 02          	cmp    $0x2,%ax
 273:	75 12                	jne    287 <moveAll+0x77>
  case T_FILE:
    printf(1, "Move fail!\n");
 275:	83 ec 08             	sub    $0x8,%esp
 278:	68 28 0c 00 00       	push   $0xc28
 27d:	6a 01                	push   $0x1
 27f:	e8 ac 05 00 00       	call   830 <printf>
    break;
 284:	83 c4 10             	add    $0x10,%esp
        //rmdir(buf);
      }
    }
    break;
  }
  close(fd);
 287:	83 ec 0c             	sub    $0xc,%esp
 28a:	53                   	push   %ebx
 28b:	e8 7a 04 00 00       	call   70a <close>
  return 1;
 290:	83 c4 10             	add    $0x10,%esp
 293:	b8 01 00 00 00       	mov    $0x1,%eax
}
 298:	8d 65 f4             	lea    -0xc(%ebp),%esp
 29b:	5b                   	pop    %ebx
 29c:	5e                   	pop    %esi
 29d:	5f                   	pop    %edi
 29e:	5d                   	pop    %ebp
 29f:	c3                   	ret    
  switch(st.type){
  case T_FILE:
    printf(1, "Move fail!\n");
    break;
  case T_DIR:
    strcpy(buf, source);
 2a0:	8d bd 00 fa ff ff    	lea    -0x600(%ebp),%edi
 2a6:	83 ec 08             	sub    $0x8,%esp
 2a9:	56                   	push   %esi
 2aa:	8d b5 dc f9 ff ff    	lea    -0x624(%ebp),%esi
 2b0:	57                   	push   %edi
 2b1:	e8 ea 01 00 00       	call   4a0 <strcpy>
    p = buf+strlen(buf);
 2b6:	89 3c 24             	mov    %edi,(%esp)
 2b9:	e8 62 02 00 00       	call   520 <strlen>
 2be:	8d 14 07             	lea    (%edi,%eax,1),%edx
    *p++ = '/';
 2c1:	8d 44 07 01          	lea    0x1(%edi,%eax,1),%eax
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 2c5:	83 c4 10             	add    $0x10,%esp
  case T_FILE:
    printf(1, "Move fail!\n");
    break;
  case T_DIR:
    strcpy(buf, source);
    p = buf+strlen(buf);
 2c8:	89 95 d0 f9 ff ff    	mov    %edx,-0x630(%ebp)
    *p++ = '/';
 2ce:	89 85 cc f9 ff ff    	mov    %eax,-0x634(%ebp)
 2d4:	c6 02 2f             	movb   $0x2f,(%edx)
 2d7:	89 f6                	mov    %esi,%esi
 2d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 2e0:	83 ec 04             	sub    $0x4,%esp
 2e3:	6a 10                	push   $0x10
 2e5:	56                   	push   %esi
 2e6:	53                   	push   %ebx
 2e7:	e8 0e 04 00 00       	call   6fa <read>
 2ec:	83 c4 10             	add    $0x10,%esp
 2ef:	83 f8 10             	cmp    $0x10,%eax
 2f2:	75 93                	jne    287 <moveAll+0x77>
      if(de.inum == 0)
 2f4:	66 83 bd dc f9 ff ff 	cmpw   $0x0,-0x624(%ebp)
 2fb:	00 
 2fc:	74 e2                	je     2e0 <moveAll+0xd0>
        continue;
      memmove(p, de.name, DIRSIZ);
 2fe:	8d 85 de f9 ff ff    	lea    -0x622(%ebp),%eax
 304:	83 ec 04             	sub    $0x4,%esp
 307:	6a 0e                	push   $0xe
 309:	50                   	push   %eax
 30a:	ff b5 cc f9 ff ff    	pushl  -0x634(%ebp)
 310:	e8 9b 03 00 00       	call   6b0 <memmove>
      p[DIRSIZ] = 0;
 315:	8b 85 d0 f9 ff ff    	mov    -0x630(%ebp),%eax
 31b:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
 31f:	58                   	pop    %eax
 320:	8d 85 ec f9 ff ff    	lea    -0x614(%ebp),%eax
 326:	5a                   	pop    %edx
 327:	50                   	push   %eax
 328:	57                   	push   %edi
 329:	e8 f2 02 00 00       	call   620 <stat>
 32e:	83 c4 10             	add    $0x10,%esp
 331:	85 c0                	test   %eax,%eax
 333:	0f 88 ef 00 00 00    	js     428 <moveAll+0x218>
        printf(1, "mv: cannot stat %s\n", buf);
        continue;
      }
      //printf(1, "%s %d %d %d %s\n", fmtname(buf), st.type, st.ino, st.size, buf);
      char *temp = fmtname(buf);
 339:	83 ec 0c             	sub    $0xc,%esp
 33c:	57                   	push   %edi
 33d:	e8 ce fd ff ff       	call   110 <fmtname>
      //printf(1,"%d %d %s\n",strcmp(temp,"."),strcmp(temp,".."),temp);
      if(strcmp(temp,".")==32 || strcmp(temp,"..")==-14 || strcmp(temp,".")==46 || strcmp(temp,"..")==32){
 342:	5a                   	pop    %edx
 343:	59                   	pop    %ecx
 344:	68 49 0c 00 00       	push   $0xc49
 349:	50                   	push   %eax
 34a:	89 85 d4 f9 ff ff    	mov    %eax,-0x62c(%ebp)
 350:	e8 7b 01 00 00       	call   4d0 <strcmp>
 355:	83 c4 10             	add    $0x10,%esp
 358:	83 f8 20             	cmp    $0x20,%eax
 35b:	74 83                	je     2e0 <moveAll+0xd0>
 35d:	83 ec 08             	sub    $0x8,%esp
 360:	68 48 0c 00 00       	push   $0xc48
 365:	ff b5 d4 f9 ff ff    	pushl  -0x62c(%ebp)
 36b:	e8 60 01 00 00       	call   4d0 <strcmp>
 370:	83 c4 10             	add    $0x10,%esp
 373:	83 f8 f2             	cmp    $0xfffffff2,%eax
 376:	0f 84 64 ff ff ff    	je     2e0 <moveAll+0xd0>
 37c:	83 ec 08             	sub    $0x8,%esp
 37f:	68 49 0c 00 00       	push   $0xc49
 384:	ff b5 d4 f9 ff ff    	pushl  -0x62c(%ebp)
 38a:	e8 41 01 00 00       	call   4d0 <strcmp>
 38f:	83 c4 10             	add    $0x10,%esp
 392:	83 f8 2e             	cmp    $0x2e,%eax
 395:	0f 84 45 ff ff ff    	je     2e0 <moveAll+0xd0>
 39b:	83 ec 08             	sub    $0x8,%esp
 39e:	68 48 0c 00 00       	push   $0xc48
 3a3:	ff b5 d4 f9 ff ff    	pushl  -0x62c(%ebp)
 3a9:	e8 22 01 00 00       	call   4d0 <strcmp>
 3ae:	83 c4 10             	add    $0x10,%esp
 3b1:	83 f8 20             	cmp    $0x20,%eax
 3b4:	0f 84 26 ff ff ff    	je     2e0 <moveAll+0xd0>
        //printf(1,"Skipped %s\n",temp);
        continue;
      } 
      //printf(1,"%s\n",buf);
      strcpy(tempDes,destination);
 3ba:	8d 8d 00 fc ff ff    	lea    -0x400(%ebp),%ecx
 3c0:	83 ec 08             	sub    $0x8,%esp
 3c3:	ff 75 0c             	pushl  0xc(%ebp)
 3c6:	51                   	push   %ecx
 3c7:	e8 d4 00 00 00       	call   4a0 <strcpy>
      strcats(tempDes,"/");
 3cc:	58                   	pop    %eax
 3cd:	8d 8d 00 fc ff ff    	lea    -0x400(%ebp),%ecx
 3d3:	5a                   	pop    %edx
 3d4:	68 4b 0c 00 00       	push   $0xc4b
 3d9:	51                   	push   %ecx
 3da:	e8 e1 fc ff ff       	call   c0 <strcats>
      strcats(tempDes,temp);
 3df:	59                   	pop    %ecx
 3e0:	58                   	pop    %eax
 3e1:	8d 85 00 fc ff ff    	lea    -0x400(%ebp),%eax
 3e7:	ff b5 d4 f9 ff ff    	pushl  -0x62c(%ebp)
 3ed:	50                   	push   %eax
 3ee:	e8 cd fc ff ff       	call   c0 <strcats>
      //printf(1,"%s\n",tempDes);
      if(st.type == T_FILE){
 3f3:	83 c4 10             	add    $0x10,%esp
 3f6:	66 83 bd ec f9 ff ff 	cmpw   $0x2,-0x614(%ebp)
 3fd:	02 
 3fe:	0f 84 7e 00 00 00    	je     482 <moveAll+0x272>
        moveFile(buf,tempDes);
      }else{
        moveAll(buf,tempDes);
 404:	8d 85 00 fc ff ff    	lea    -0x400(%ebp),%eax
 40a:	83 ec 08             	sub    $0x8,%esp
 40d:	50                   	push   %eax
 40e:	57                   	push   %edi
 40f:	e8 fc fd ff ff       	call   210 <moveAll>
        unlink(buf);
 414:	89 3c 24             	mov    %edi,(%esp)
 417:	e8 16 03 00 00       	call   732 <unlink>
 41c:	83 c4 10             	add    $0x10,%esp
 41f:	e9 bc fe ff ff       	jmp    2e0 <moveAll+0xd0>
 424:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        printf(1, "mv: cannot stat %s\n", buf);
 428:	83 ec 04             	sub    $0x4,%esp
 42b:	57                   	push   %edi
 42c:	68 34 0c 00 00       	push   $0xc34
 431:	6a 01                	push   $0x1
 433:	e8 f8 03 00 00       	call   830 <printf>
        continue;
 438:	83 c4 10             	add    $0x10,%esp
 43b:	e9 a0 fe ff ff       	jmp    2e0 <moveAll+0xd0>
  struct dirent de;
  struct stat st;
  mkdir(destination);
  chdir(destination);
  if((fd = open(source, 0)) < 0){
    printf(2, "ls: cannot open %s\n", source);
 440:	83 ec 04             	sub    $0x4,%esp
 443:	56                   	push   %esi
 444:	68 00 0c 00 00       	push   $0xc00
 449:	6a 02                	push   $0x2
 44b:	e8 e0 03 00 00       	call   830 <printf>
    return 0;
 450:	83 c4 10             	add    $0x10,%esp
    }
    break;
  }
  close(fd);
  return 1;
}
 453:	8d 65 f4             	lea    -0xc(%ebp),%esp
  struct stat st;
  mkdir(destination);
  chdir(destination);
  if((fd = open(source, 0)) < 0){
    printf(2, "ls: cannot open %s\n", source);
    return 0;
 456:	31 c0                	xor    %eax,%eax
    }
    break;
  }
  close(fd);
  return 1;
}
 458:	5b                   	pop    %ebx
 459:	5e                   	pop    %esi
 45a:	5f                   	pop    %edi
 45b:	5d                   	pop    %ebp
 45c:	c3                   	ret    
 45d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(2, "ls: cannot open %s\n", source);
    return 0;
  }

  if(fstat(fd, &st) < 0){
    printf(2, "ls: cannot stat %s\n", source);
 460:	83 ec 04             	sub    $0x4,%esp
 463:	56                   	push   %esi
 464:	68 14 0c 00 00       	push   $0xc14
 469:	6a 02                	push   $0x2
 46b:	e8 c0 03 00 00       	call   830 <printf>
    close(fd);
 470:	89 1c 24             	mov    %ebx,(%esp)
 473:	e8 92 02 00 00       	call   70a <close>
    return 0;
 478:	83 c4 10             	add    $0x10,%esp
 47b:	31 c0                	xor    %eax,%eax
 47d:	e9 16 fe ff ff       	jmp    298 <moveAll+0x88>
      strcpy(tempDes,destination);
      strcats(tempDes,"/");
      strcats(tempDes,temp);
      //printf(1,"%s\n",tempDes);
      if(st.type == T_FILE){
        moveFile(buf,tempDes);
 482:	8d 85 00 fc ff ff    	lea    -0x400(%ebp),%eax
 488:	83 ec 08             	sub    $0x8,%esp
 48b:	50                   	push   %eax
 48c:	57                   	push   %edi
 48d:	e8 1e fd ff ff       	call   1b0 <moveFile>
 492:	83 c4 10             	add    $0x10,%esp
 495:	e9 46 fe ff ff       	jmp    2e0 <moveAll+0xd0>
 49a:	66 90                	xchg   %ax,%ax
 49c:	66 90                	xchg   %ax,%ax
 49e:	66 90                	xchg   %ax,%ax

000004a0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	53                   	push   %ebx
 4a4:	8b 45 08             	mov    0x8(%ebp),%eax
 4a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 4aa:	89 c2                	mov    %eax,%edx
 4ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4b0:	83 c1 01             	add    $0x1,%ecx
 4b3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 4b7:	83 c2 01             	add    $0x1,%edx
 4ba:	84 db                	test   %bl,%bl
 4bc:	88 5a ff             	mov    %bl,-0x1(%edx)
 4bf:	75 ef                	jne    4b0 <strcpy+0x10>
    ;
  return os;
}
 4c1:	5b                   	pop    %ebx
 4c2:	5d                   	pop    %ebp
 4c3:	c3                   	ret    
 4c4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 4ca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000004d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	56                   	push   %esi
 4d4:	53                   	push   %ebx
 4d5:	8b 55 08             	mov    0x8(%ebp),%edx
 4d8:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 4db:	0f b6 02             	movzbl (%edx),%eax
 4de:	0f b6 19             	movzbl (%ecx),%ebx
 4e1:	84 c0                	test   %al,%al
 4e3:	75 1e                	jne    503 <strcmp+0x33>
 4e5:	eb 29                	jmp    510 <strcmp+0x40>
 4e7:	89 f6                	mov    %esi,%esi
 4e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 4f0:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 4f3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 4f6:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 4f9:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 4fd:	84 c0                	test   %al,%al
 4ff:	74 0f                	je     510 <strcmp+0x40>
 501:	89 f1                	mov    %esi,%ecx
 503:	38 d8                	cmp    %bl,%al
 505:	74 e9                	je     4f0 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 507:	29 d8                	sub    %ebx,%eax
}
 509:	5b                   	pop    %ebx
 50a:	5e                   	pop    %esi
 50b:	5d                   	pop    %ebp
 50c:	c3                   	ret    
 50d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 510:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 512:	29 d8                	sub    %ebx,%eax
}
 514:	5b                   	pop    %ebx
 515:	5e                   	pop    %esi
 516:	5d                   	pop    %ebp
 517:	c3                   	ret    
 518:	90                   	nop
 519:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000520 <strlen>:

uint
strlen(char *s)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 526:	80 39 00             	cmpb   $0x0,(%ecx)
 529:	74 12                	je     53d <strlen+0x1d>
 52b:	31 d2                	xor    %edx,%edx
 52d:	8d 76 00             	lea    0x0(%esi),%esi
 530:	83 c2 01             	add    $0x1,%edx
 533:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 537:	89 d0                	mov    %edx,%eax
 539:	75 f5                	jne    530 <strlen+0x10>
    ;
  return n;
}
 53b:	5d                   	pop    %ebp
 53c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 53d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 53f:	5d                   	pop    %ebp
 540:	c3                   	ret    
 541:	eb 0d                	jmp    550 <memset>
 543:	90                   	nop
 544:	90                   	nop
 545:	90                   	nop
 546:	90                   	nop
 547:	90                   	nop
 548:	90                   	nop
 549:	90                   	nop
 54a:	90                   	nop
 54b:	90                   	nop
 54c:	90                   	nop
 54d:	90                   	nop
 54e:	90                   	nop
 54f:	90                   	nop

00000550 <memset>:

void*
memset(void *dst, int c, uint n)
{
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	57                   	push   %edi
 554:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 557:	8b 4d 10             	mov    0x10(%ebp),%ecx
 55a:	8b 45 0c             	mov    0xc(%ebp),%eax
 55d:	89 d7                	mov    %edx,%edi
 55f:	fc                   	cld    
 560:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 562:	89 d0                	mov    %edx,%eax
 564:	5f                   	pop    %edi
 565:	5d                   	pop    %ebp
 566:	c3                   	ret    
 567:	89 f6                	mov    %esi,%esi
 569:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000570 <strchr>:

char*
strchr(const char *s, char c)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	53                   	push   %ebx
 574:	8b 45 08             	mov    0x8(%ebp),%eax
 577:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 57a:	0f b6 10             	movzbl (%eax),%edx
 57d:	84 d2                	test   %dl,%dl
 57f:	74 1d                	je     59e <strchr+0x2e>
    if(*s == c)
 581:	38 d3                	cmp    %dl,%bl
 583:	89 d9                	mov    %ebx,%ecx
 585:	75 0d                	jne    594 <strchr+0x24>
 587:	eb 17                	jmp    5a0 <strchr+0x30>
 589:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 590:	38 ca                	cmp    %cl,%dl
 592:	74 0c                	je     5a0 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 594:	83 c0 01             	add    $0x1,%eax
 597:	0f b6 10             	movzbl (%eax),%edx
 59a:	84 d2                	test   %dl,%dl
 59c:	75 f2                	jne    590 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 59e:	31 c0                	xor    %eax,%eax
}
 5a0:	5b                   	pop    %ebx
 5a1:	5d                   	pop    %ebp
 5a2:	c3                   	ret    
 5a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 5a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005b0 <gets>:

char*
gets(char *buf, int max)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	57                   	push   %edi
 5b4:	56                   	push   %esi
 5b5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 5b6:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 5b8:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
 5bb:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 5be:	eb 29                	jmp    5e9 <gets+0x39>
    cc = read(0, &c, 1);
 5c0:	83 ec 04             	sub    $0x4,%esp
 5c3:	6a 01                	push   $0x1
 5c5:	57                   	push   %edi
 5c6:	6a 00                	push   $0x0
 5c8:	e8 2d 01 00 00       	call   6fa <read>
    if(cc < 1)
 5cd:	83 c4 10             	add    $0x10,%esp
 5d0:	85 c0                	test   %eax,%eax
 5d2:	7e 1d                	jle    5f1 <gets+0x41>
      break;
    buf[i++] = c;
 5d4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 5d8:	8b 55 08             	mov    0x8(%ebp),%edx
 5db:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 5dd:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 5df:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 5e3:	74 1b                	je     600 <gets+0x50>
 5e5:	3c 0d                	cmp    $0xd,%al
 5e7:	74 17                	je     600 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 5e9:	8d 5e 01             	lea    0x1(%esi),%ebx
 5ec:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 5ef:	7c cf                	jl     5c0 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 5f1:	8b 45 08             	mov    0x8(%ebp),%eax
 5f4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 5f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5fb:	5b                   	pop    %ebx
 5fc:	5e                   	pop    %esi
 5fd:	5f                   	pop    %edi
 5fe:	5d                   	pop    %ebp
 5ff:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 600:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 603:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 605:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 609:	8d 65 f4             	lea    -0xc(%ebp),%esp
 60c:	5b                   	pop    %ebx
 60d:	5e                   	pop    %esi
 60e:	5f                   	pop    %edi
 60f:	5d                   	pop    %ebp
 610:	c3                   	ret    
 611:	eb 0d                	jmp    620 <stat>
 613:	90                   	nop
 614:	90                   	nop
 615:	90                   	nop
 616:	90                   	nop
 617:	90                   	nop
 618:	90                   	nop
 619:	90                   	nop
 61a:	90                   	nop
 61b:	90                   	nop
 61c:	90                   	nop
 61d:	90                   	nop
 61e:	90                   	nop
 61f:	90                   	nop

00000620 <stat>:

int
stat(char *n, struct stat *st)
{
 620:	55                   	push   %ebp
 621:	89 e5                	mov    %esp,%ebp
 623:	56                   	push   %esi
 624:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 625:	83 ec 08             	sub    $0x8,%esp
 628:	6a 00                	push   $0x0
 62a:	ff 75 08             	pushl  0x8(%ebp)
 62d:	e8 f0 00 00 00       	call   722 <open>
  if(fd < 0)
 632:	83 c4 10             	add    $0x10,%esp
 635:	85 c0                	test   %eax,%eax
 637:	78 27                	js     660 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 639:	83 ec 08             	sub    $0x8,%esp
 63c:	ff 75 0c             	pushl  0xc(%ebp)
 63f:	89 c3                	mov    %eax,%ebx
 641:	50                   	push   %eax
 642:	e8 f3 00 00 00       	call   73a <fstat>
 647:	89 c6                	mov    %eax,%esi
  close(fd);
 649:	89 1c 24             	mov    %ebx,(%esp)
 64c:	e8 b9 00 00 00       	call   70a <close>
  return r;
 651:	83 c4 10             	add    $0x10,%esp
 654:	89 f0                	mov    %esi,%eax
}
 656:	8d 65 f8             	lea    -0x8(%ebp),%esp
 659:	5b                   	pop    %ebx
 65a:	5e                   	pop    %esi
 65b:	5d                   	pop    %ebp
 65c:	c3                   	ret    
 65d:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 660:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 665:	eb ef                	jmp    656 <stat+0x36>
 667:	89 f6                	mov    %esi,%esi
 669:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000670 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 670:	55                   	push   %ebp
 671:	89 e5                	mov    %esp,%ebp
 673:	53                   	push   %ebx
 674:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 677:	0f be 11             	movsbl (%ecx),%edx
 67a:	8d 42 d0             	lea    -0x30(%edx),%eax
 67d:	3c 09                	cmp    $0x9,%al
 67f:	b8 00 00 00 00       	mov    $0x0,%eax
 684:	77 1f                	ja     6a5 <atoi+0x35>
 686:	8d 76 00             	lea    0x0(%esi),%esi
 689:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 690:	8d 04 80             	lea    (%eax,%eax,4),%eax
 693:	83 c1 01             	add    $0x1,%ecx
 696:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 69a:	0f be 11             	movsbl (%ecx),%edx
 69d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 6a0:	80 fb 09             	cmp    $0x9,%bl
 6a3:	76 eb                	jbe    690 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
 6a5:	5b                   	pop    %ebx
 6a6:	5d                   	pop    %ebp
 6a7:	c3                   	ret    
 6a8:	90                   	nop
 6a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000006b0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	56                   	push   %esi
 6b4:	53                   	push   %ebx
 6b5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 6b8:	8b 45 08             	mov    0x8(%ebp),%eax
 6bb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 6be:	85 db                	test   %ebx,%ebx
 6c0:	7e 14                	jle    6d6 <memmove+0x26>
 6c2:	31 d2                	xor    %edx,%edx
 6c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 6c8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 6cc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 6cf:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 6d2:	39 da                	cmp    %ebx,%edx
 6d4:	75 f2                	jne    6c8 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 6d6:	5b                   	pop    %ebx
 6d7:	5e                   	pop    %esi
 6d8:	5d                   	pop    %ebp
 6d9:	c3                   	ret    

000006da <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6da:	b8 01 00 00 00       	mov    $0x1,%eax
 6df:	cd 40                	int    $0x40
 6e1:	c3                   	ret    

000006e2 <exit>:
SYSCALL(exit)
 6e2:	b8 02 00 00 00       	mov    $0x2,%eax
 6e7:	cd 40                	int    $0x40
 6e9:	c3                   	ret    

000006ea <wait>:
SYSCALL(wait)
 6ea:	b8 03 00 00 00       	mov    $0x3,%eax
 6ef:	cd 40                	int    $0x40
 6f1:	c3                   	ret    

000006f2 <pipe>:
SYSCALL(pipe)
 6f2:	b8 04 00 00 00       	mov    $0x4,%eax
 6f7:	cd 40                	int    $0x40
 6f9:	c3                   	ret    

000006fa <read>:
SYSCALL(read)
 6fa:	b8 05 00 00 00       	mov    $0x5,%eax
 6ff:	cd 40                	int    $0x40
 701:	c3                   	ret    

00000702 <write>:
SYSCALL(write)
 702:	b8 10 00 00 00       	mov    $0x10,%eax
 707:	cd 40                	int    $0x40
 709:	c3                   	ret    

0000070a <close>:
SYSCALL(close)
 70a:	b8 15 00 00 00       	mov    $0x15,%eax
 70f:	cd 40                	int    $0x40
 711:	c3                   	ret    

00000712 <kill>:
SYSCALL(kill)
 712:	b8 06 00 00 00       	mov    $0x6,%eax
 717:	cd 40                	int    $0x40
 719:	c3                   	ret    

0000071a <exec>:
SYSCALL(exec)
 71a:	b8 07 00 00 00       	mov    $0x7,%eax
 71f:	cd 40                	int    $0x40
 721:	c3                   	ret    

00000722 <open>:
SYSCALL(open)
 722:	b8 0f 00 00 00       	mov    $0xf,%eax
 727:	cd 40                	int    $0x40
 729:	c3                   	ret    

0000072a <mknod>:
SYSCALL(mknod)
 72a:	b8 11 00 00 00       	mov    $0x11,%eax
 72f:	cd 40                	int    $0x40
 731:	c3                   	ret    

00000732 <unlink>:
SYSCALL(unlink)
 732:	b8 12 00 00 00       	mov    $0x12,%eax
 737:	cd 40                	int    $0x40
 739:	c3                   	ret    

0000073a <fstat>:
SYSCALL(fstat)
 73a:	b8 08 00 00 00       	mov    $0x8,%eax
 73f:	cd 40                	int    $0x40
 741:	c3                   	ret    

00000742 <link>:
SYSCALL(link)
 742:	b8 13 00 00 00       	mov    $0x13,%eax
 747:	cd 40                	int    $0x40
 749:	c3                   	ret    

0000074a <mkdir>:
SYSCALL(mkdir)
 74a:	b8 14 00 00 00       	mov    $0x14,%eax
 74f:	cd 40                	int    $0x40
 751:	c3                   	ret    

00000752 <chdir>:
SYSCALL(chdir)
 752:	b8 09 00 00 00       	mov    $0x9,%eax
 757:	cd 40                	int    $0x40
 759:	c3                   	ret    

0000075a <dup>:
SYSCALL(dup)
 75a:	b8 0a 00 00 00       	mov    $0xa,%eax
 75f:	cd 40                	int    $0x40
 761:	c3                   	ret    

00000762 <getpid>:
SYSCALL(getpid)
 762:	b8 0b 00 00 00       	mov    $0xb,%eax
 767:	cd 40                	int    $0x40
 769:	c3                   	ret    

0000076a <sbrk>:
SYSCALL(sbrk)
 76a:	b8 0c 00 00 00       	mov    $0xc,%eax
 76f:	cd 40                	int    $0x40
 771:	c3                   	ret    

00000772 <sleep>:
SYSCALL(sleep)
 772:	b8 0d 00 00 00       	mov    $0xd,%eax
 777:	cd 40                	int    $0x40
 779:	c3                   	ret    

0000077a <uptime>:
SYSCALL(uptime)
 77a:	b8 0e 00 00 00       	mov    $0xe,%eax
 77f:	cd 40                	int    $0x40
 781:	c3                   	ret    
 782:	66 90                	xchg   %ax,%ax
 784:	66 90                	xchg   %ax,%ax
 786:	66 90                	xchg   %ax,%ax
 788:	66 90                	xchg   %ax,%ax
 78a:	66 90                	xchg   %ax,%ax
 78c:	66 90                	xchg   %ax,%ax
 78e:	66 90                	xchg   %ax,%ax

00000790 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 790:	55                   	push   %ebp
 791:	89 e5                	mov    %esp,%ebp
 793:	57                   	push   %edi
 794:	56                   	push   %esi
 795:	53                   	push   %ebx
 796:	89 c6                	mov    %eax,%esi
 798:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 79b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 79e:	85 db                	test   %ebx,%ebx
 7a0:	74 7e                	je     820 <printint+0x90>
 7a2:	89 d0                	mov    %edx,%eax
 7a4:	c1 e8 1f             	shr    $0x1f,%eax
 7a7:	84 c0                	test   %al,%al
 7a9:	74 75                	je     820 <printint+0x90>
    neg = 1;
    x = -xx;
 7ab:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 7ad:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 7b4:	f7 d8                	neg    %eax
 7b6:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 7b9:	31 ff                	xor    %edi,%edi
 7bb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 7be:	89 ce                	mov    %ecx,%esi
 7c0:	eb 08                	jmp    7ca <printint+0x3a>
 7c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 7c8:	89 cf                	mov    %ecx,%edi
 7ca:	31 d2                	xor    %edx,%edx
 7cc:	8d 4f 01             	lea    0x1(%edi),%ecx
 7cf:	f7 f6                	div    %esi
 7d1:	0f b6 92 84 0c 00 00 	movzbl 0xc84(%edx),%edx
  }while((x /= base) != 0);
 7d8:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 7da:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 7dd:	75 e9                	jne    7c8 <printint+0x38>
  if(neg)
 7df:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 7e2:	8b 75 c0             	mov    -0x40(%ebp),%esi
 7e5:	85 c0                	test   %eax,%eax
 7e7:	74 08                	je     7f1 <printint+0x61>
    buf[i++] = '-';
 7e9:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 7ee:	8d 4f 02             	lea    0x2(%edi),%ecx
 7f1:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 7f5:	8d 76 00             	lea    0x0(%esi),%esi
 7f8:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7fb:	83 ec 04             	sub    $0x4,%esp
 7fe:	83 ef 01             	sub    $0x1,%edi
 801:	6a 01                	push   $0x1
 803:	53                   	push   %ebx
 804:	56                   	push   %esi
 805:	88 45 d7             	mov    %al,-0x29(%ebp)
 808:	e8 f5 fe ff ff       	call   702 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 80d:	83 c4 10             	add    $0x10,%esp
 810:	39 df                	cmp    %ebx,%edi
 812:	75 e4                	jne    7f8 <printint+0x68>
    putc(fd, buf[i]);
}
 814:	8d 65 f4             	lea    -0xc(%ebp),%esp
 817:	5b                   	pop    %ebx
 818:	5e                   	pop    %esi
 819:	5f                   	pop    %edi
 81a:	5d                   	pop    %ebp
 81b:	c3                   	ret    
 81c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 820:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 822:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 829:	eb 8b                	jmp    7b6 <printint+0x26>
 82b:	90                   	nop
 82c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000830 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 830:	55                   	push   %ebp
 831:	89 e5                	mov    %esp,%ebp
 833:	57                   	push   %edi
 834:	56                   	push   %esi
 835:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 836:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 839:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 83c:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 83f:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 842:	89 45 d0             	mov    %eax,-0x30(%ebp)
 845:	0f b6 1e             	movzbl (%esi),%ebx
 848:	83 c6 01             	add    $0x1,%esi
 84b:	84 db                	test   %bl,%bl
 84d:	0f 84 b0 00 00 00    	je     903 <printf+0xd3>
 853:	31 d2                	xor    %edx,%edx
 855:	eb 39                	jmp    890 <printf+0x60>
 857:	89 f6                	mov    %esi,%esi
 859:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 860:	83 f8 25             	cmp    $0x25,%eax
 863:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 866:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 86b:	74 18                	je     885 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 86d:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 870:	83 ec 04             	sub    $0x4,%esp
 873:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 876:	6a 01                	push   $0x1
 878:	50                   	push   %eax
 879:	57                   	push   %edi
 87a:	e8 83 fe ff ff       	call   702 <write>
 87f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 882:	83 c4 10             	add    $0x10,%esp
 885:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 888:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 88c:	84 db                	test   %bl,%bl
 88e:	74 73                	je     903 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
 890:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 892:	0f be cb             	movsbl %bl,%ecx
 895:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 898:	74 c6                	je     860 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 89a:	83 fa 25             	cmp    $0x25,%edx
 89d:	75 e6                	jne    885 <printf+0x55>
      if(c == 'd'){
 89f:	83 f8 64             	cmp    $0x64,%eax
 8a2:	0f 84 f8 00 00 00    	je     9a0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 8a8:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 8ae:	83 f9 70             	cmp    $0x70,%ecx
 8b1:	74 5d                	je     910 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 8b3:	83 f8 73             	cmp    $0x73,%eax
 8b6:	0f 84 84 00 00 00    	je     940 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 8bc:	83 f8 63             	cmp    $0x63,%eax
 8bf:	0f 84 ea 00 00 00    	je     9af <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 8c5:	83 f8 25             	cmp    $0x25,%eax
 8c8:	0f 84 c2 00 00 00    	je     990 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8ce:	8d 45 e7             	lea    -0x19(%ebp),%eax
 8d1:	83 ec 04             	sub    $0x4,%esp
 8d4:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8d8:	6a 01                	push   $0x1
 8da:	50                   	push   %eax
 8db:	57                   	push   %edi
 8dc:	e8 21 fe ff ff       	call   702 <write>
 8e1:	83 c4 0c             	add    $0xc,%esp
 8e4:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 8e7:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 8ea:	6a 01                	push   $0x1
 8ec:	50                   	push   %eax
 8ed:	57                   	push   %edi
 8ee:	83 c6 01             	add    $0x1,%esi
 8f1:	e8 0c fe ff ff       	call   702 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 8f6:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8fa:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 8fd:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 8ff:	84 db                	test   %bl,%bl
 901:	75 8d                	jne    890 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 903:	8d 65 f4             	lea    -0xc(%ebp),%esp
 906:	5b                   	pop    %ebx
 907:	5e                   	pop    %esi
 908:	5f                   	pop    %edi
 909:	5d                   	pop    %ebp
 90a:	c3                   	ret    
 90b:	90                   	nop
 90c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 910:	83 ec 0c             	sub    $0xc,%esp
 913:	b9 10 00 00 00       	mov    $0x10,%ecx
 918:	6a 00                	push   $0x0
 91a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 91d:	89 f8                	mov    %edi,%eax
 91f:	8b 13                	mov    (%ebx),%edx
 921:	e8 6a fe ff ff       	call   790 <printint>
        ap++;
 926:	89 d8                	mov    %ebx,%eax
 928:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 92b:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 92d:	83 c0 04             	add    $0x4,%eax
 930:	89 45 d0             	mov    %eax,-0x30(%ebp)
 933:	e9 4d ff ff ff       	jmp    885 <printf+0x55>
 938:	90                   	nop
 939:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 940:	8b 45 d0             	mov    -0x30(%ebp),%eax
 943:	8b 18                	mov    (%eax),%ebx
        ap++;
 945:	83 c0 04             	add    $0x4,%eax
 948:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 94b:	b8 7c 0c 00 00       	mov    $0xc7c,%eax
 950:	85 db                	test   %ebx,%ebx
 952:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 955:	0f b6 03             	movzbl (%ebx),%eax
 958:	84 c0                	test   %al,%al
 95a:	74 23                	je     97f <printf+0x14f>
 95c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 960:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 963:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 966:	83 ec 04             	sub    $0x4,%esp
 969:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 96b:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 96e:	50                   	push   %eax
 96f:	57                   	push   %edi
 970:	e8 8d fd ff ff       	call   702 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 975:	0f b6 03             	movzbl (%ebx),%eax
 978:	83 c4 10             	add    $0x10,%esp
 97b:	84 c0                	test   %al,%al
 97d:	75 e1                	jne    960 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 97f:	31 d2                	xor    %edx,%edx
 981:	e9 ff fe ff ff       	jmp    885 <printf+0x55>
 986:	8d 76 00             	lea    0x0(%esi),%esi
 989:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 990:	83 ec 04             	sub    $0x4,%esp
 993:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 996:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 999:	6a 01                	push   $0x1
 99b:	e9 4c ff ff ff       	jmp    8ec <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 9a0:	83 ec 0c             	sub    $0xc,%esp
 9a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 9a8:	6a 01                	push   $0x1
 9aa:	e9 6b ff ff ff       	jmp    91a <printf+0xea>
 9af:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 9b2:	83 ec 04             	sub    $0x4,%esp
 9b5:	8b 03                	mov    (%ebx),%eax
 9b7:	6a 01                	push   $0x1
 9b9:	88 45 e4             	mov    %al,-0x1c(%ebp)
 9bc:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 9bf:	50                   	push   %eax
 9c0:	57                   	push   %edi
 9c1:	e8 3c fd ff ff       	call   702 <write>
 9c6:	e9 5b ff ff ff       	jmp    926 <printf+0xf6>
 9cb:	66 90                	xchg   %ax,%ax
 9cd:	66 90                	xchg   %ax,%ax
 9cf:	90                   	nop

000009d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9d1:	a1 fc 0f 00 00       	mov    0xffc,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 9d6:	89 e5                	mov    %esp,%ebp
 9d8:	57                   	push   %edi
 9d9:	56                   	push   %esi
 9da:	53                   	push   %ebx
 9db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9de:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 9e0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9e3:	39 c8                	cmp    %ecx,%eax
 9e5:	73 19                	jae    a00 <free+0x30>
 9e7:	89 f6                	mov    %esi,%esi
 9e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 9f0:	39 d1                	cmp    %edx,%ecx
 9f2:	72 1c                	jb     a10 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9f4:	39 d0                	cmp    %edx,%eax
 9f6:	73 18                	jae    a10 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 9f8:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9fa:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9fc:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9fe:	72 f0                	jb     9f0 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a00:	39 d0                	cmp    %edx,%eax
 a02:	72 f4                	jb     9f8 <free+0x28>
 a04:	39 d1                	cmp    %edx,%ecx
 a06:	73 f0                	jae    9f8 <free+0x28>
 a08:	90                   	nop
 a09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 a10:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a13:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a16:	39 d7                	cmp    %edx,%edi
 a18:	74 19                	je     a33 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 a1a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 a1d:	8b 50 04             	mov    0x4(%eax),%edx
 a20:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 a23:	39 f1                	cmp    %esi,%ecx
 a25:	74 23                	je     a4a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 a27:	89 08                	mov    %ecx,(%eax)
  freep = p;
 a29:	a3 fc 0f 00 00       	mov    %eax,0xffc
}
 a2e:	5b                   	pop    %ebx
 a2f:	5e                   	pop    %esi
 a30:	5f                   	pop    %edi
 a31:	5d                   	pop    %ebp
 a32:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 a33:	03 72 04             	add    0x4(%edx),%esi
 a36:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a39:	8b 10                	mov    (%eax),%edx
 a3b:	8b 12                	mov    (%edx),%edx
 a3d:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a40:	8b 50 04             	mov    0x4(%eax),%edx
 a43:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 a46:	39 f1                	cmp    %esi,%ecx
 a48:	75 dd                	jne    a27 <free+0x57>
    p->s.size += bp->s.size;
 a4a:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 a4d:	a3 fc 0f 00 00       	mov    %eax,0xffc
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 a52:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 a55:	8b 53 f8             	mov    -0x8(%ebx),%edx
 a58:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a5a:	5b                   	pop    %ebx
 a5b:	5e                   	pop    %esi
 a5c:	5f                   	pop    %edi
 a5d:	5d                   	pop    %ebp
 a5e:	c3                   	ret    
 a5f:	90                   	nop

00000a60 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a60:	55                   	push   %ebp
 a61:	89 e5                	mov    %esp,%ebp
 a63:	57                   	push   %edi
 a64:	56                   	push   %esi
 a65:	53                   	push   %ebx
 a66:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a69:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a6c:	8b 15 fc 0f 00 00    	mov    0xffc,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a72:	8d 78 07             	lea    0x7(%eax),%edi
 a75:	c1 ef 03             	shr    $0x3,%edi
 a78:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 a7b:	85 d2                	test   %edx,%edx
 a7d:	0f 84 a3 00 00 00    	je     b26 <malloc+0xc6>
 a83:	8b 02                	mov    (%edx),%eax
 a85:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 a88:	39 cf                	cmp    %ecx,%edi
 a8a:	76 74                	jbe    b00 <malloc+0xa0>
 a8c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 a92:	be 00 10 00 00       	mov    $0x1000,%esi
 a97:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 a9e:	0f 43 f7             	cmovae %edi,%esi
 aa1:	ba 00 80 00 00       	mov    $0x8000,%edx
 aa6:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 aac:	0f 46 da             	cmovbe %edx,%ebx
 aaf:	eb 10                	jmp    ac1 <malloc+0x61>
 ab1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ab8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 aba:	8b 48 04             	mov    0x4(%eax),%ecx
 abd:	39 cf                	cmp    %ecx,%edi
 abf:	76 3f                	jbe    b00 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 ac1:	39 05 fc 0f 00 00    	cmp    %eax,0xffc
 ac7:	89 c2                	mov    %eax,%edx
 ac9:	75 ed                	jne    ab8 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 acb:	83 ec 0c             	sub    $0xc,%esp
 ace:	53                   	push   %ebx
 acf:	e8 96 fc ff ff       	call   76a <sbrk>
  if(p == (char*)-1)
 ad4:	83 c4 10             	add    $0x10,%esp
 ad7:	83 f8 ff             	cmp    $0xffffffff,%eax
 ada:	74 1c                	je     af8 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 adc:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 adf:	83 ec 0c             	sub    $0xc,%esp
 ae2:	83 c0 08             	add    $0x8,%eax
 ae5:	50                   	push   %eax
 ae6:	e8 e5 fe ff ff       	call   9d0 <free>
  return freep;
 aeb:	8b 15 fc 0f 00 00    	mov    0xffc,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 af1:	83 c4 10             	add    $0x10,%esp
 af4:	85 d2                	test   %edx,%edx
 af6:	75 c0                	jne    ab8 <malloc+0x58>
        return 0;
 af8:	31 c0                	xor    %eax,%eax
 afa:	eb 1c                	jmp    b18 <malloc+0xb8>
 afc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 b00:	39 cf                	cmp    %ecx,%edi
 b02:	74 1c                	je     b20 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 b04:	29 f9                	sub    %edi,%ecx
 b06:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b09:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b0c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 b0f:	89 15 fc 0f 00 00    	mov    %edx,0xffc
      return (void*)(p + 1);
 b15:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 b18:	8d 65 f4             	lea    -0xc(%ebp),%esp
 b1b:	5b                   	pop    %ebx
 b1c:	5e                   	pop    %esi
 b1d:	5f                   	pop    %edi
 b1e:	5d                   	pop    %ebp
 b1f:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 b20:	8b 08                	mov    (%eax),%ecx
 b22:	89 0a                	mov    %ecx,(%edx)
 b24:	eb e9                	jmp    b0f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 b26:	c7 05 fc 0f 00 00 00 	movl   $0x1000,0xffc
 b2d:	10 00 00 
 b30:	c7 05 00 10 00 00 00 	movl   $0x1000,0x1000
 b37:	10 00 00 
    base.s.size = 0;
 b3a:	b8 00 10 00 00       	mov    $0x1000,%eax
 b3f:	c7 05 04 10 00 00 00 	movl   $0x0,0x1004
 b46:	00 00 00 
 b49:	e9 3e ff ff ff       	jmp    a8c <malloc+0x2c>
