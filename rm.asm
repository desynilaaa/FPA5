
_rm:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  }
  close(fd);
  return 1;
}
int main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 08             	sub    $0x8,%esp
  14:	8b 31                	mov    (%ecx),%esi
  16:	8b 59 04             	mov    0x4(%ecx),%ebx
  int i;
  if(argc < 2){
  19:	83 fe 01             	cmp    $0x1,%esi
  1c:	7e 46                	jle    64 <main+0x64>
    printf(1, "rm require 1 atleast arguments [filename]\n");
    exit();
  }
  if(argc == 3){
  1e:	83 fe 03             	cmp    $0x3,%esi
  21:	74 54                	je     77 <main+0x77>
  23:	83 c3 04             	add    $0x4,%ebx
  }
  close(fd);
  return 1;
}
int main(int argc, char *argv[])
{
  26:	bf 01 00 00 00       	mov    $0x1,%edi
  2b:	90                   	nop
  2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1,"Recursive RM!\n");
      exit();
    }
  }
  for(i = 1; i < argc; i++){
    if(unlink(argv[i]) < 0){
  30:	83 ec 0c             	sub    $0xc,%esp
  33:	ff 33                	pushl  (%ebx)
  35:	e8 68 06 00 00       	call   6a2 <unlink>
  3a:	83 c4 10             	add    $0x10,%esp
  3d:	85 c0                	test   %eax,%eax
  3f:	78 0f                	js     50 <main+0x50>
      unlink(argv[2]);
      printf(1,"Recursive RM!\n");
      exit();
    }
  }
  for(i = 1; i < argc; i++){
  41:	83 c7 01             	add    $0x1,%edi
  44:	83 c3 04             	add    $0x4,%ebx
  47:	39 fe                	cmp    %edi,%esi
  49:	75 e5                	jne    30 <main+0x30>
      printf(1, "rm failed to remove files\n", argv[i]);
      break;
    }
  }

  exit();
  4b:	e8 02 06 00 00       	call   652 <exit>
      exit();
    }
  }
  for(i = 1; i < argc; i++){
    if(unlink(argv[i]) < 0){
      printf(1, "rm failed to remove files\n", argv[i]);
  50:	50                   	push   %eax
  51:	ff 33                	pushl  (%ebx)
  53:	68 28 0b 00 00       	push   $0xb28
  58:	6a 01                	push   $0x1
  5a:	e8 41 07 00 00       	call   7a0 <printf>
      break;
  5f:	83 c4 10             	add    $0x10,%esp
  62:	eb e7                	jmp    4b <main+0x4b>
}
int main(int argc, char *argv[])
{
  int i;
  if(argc < 2){
    printf(1, "rm require 1 atleast arguments [filename]\n");
  64:	50                   	push   %eax
  65:	50                   	push   %eax
  66:	68 44 0b 00 00       	push   $0xb44
  6b:	6a 01                	push   $0x1
  6d:	e8 2e 07 00 00       	call   7a0 <printf>
    exit();
  72:	e8 db 05 00 00       	call   652 <exit>
  }
  if(argc == 3){
    if(strcmp(argv[1],"-rf")==0){
  77:	57                   	push   %edi
  78:	57                   	push   %edi
  79:	68 f9 0a 00 00       	push   $0xaf9
  7e:	ff 73 04             	pushl  0x4(%ebx)
  81:	e8 ba 03 00 00       	call   440 <strcmp>
  86:	83 c4 10             	add    $0x10,%esp
  89:	85 c0                	test   %eax,%eax
  8b:	75 96                	jne    23 <main+0x23>
      if(removeAll(argv[2])<=0){
  8d:	83 ec 0c             	sub    $0xc,%esp
  90:	ff 73 08             	pushl  0x8(%ebx)
  93:	e8 38 01 00 00       	call   1d0 <removeAll>
  98:	83 c4 10             	add    $0x10,%esp
  9b:	85 c0                	test   %eax,%eax
  9d:	7e 1e                	jle    bd <main+0xbd>
        printf(2,"Error performing opertaion\n" );
      }
      unlink(argv[2]);
  9f:	83 ec 0c             	sub    $0xc,%esp
  a2:	ff 73 08             	pushl  0x8(%ebx)
  a5:	e8 f8 05 00 00       	call   6a2 <unlink>
      printf(1,"Recursive RM!\n");
  aa:	5a                   	pop    %edx
  ab:	59                   	pop    %ecx
  ac:	68 19 0b 00 00       	push   $0xb19
  b1:	6a 01                	push   $0x1
  b3:	e8 e8 06 00 00       	call   7a0 <printf>
      exit();
  b8:	e8 95 05 00 00       	call   652 <exit>
    exit();
  }
  if(argc == 3){
    if(strcmp(argv[1],"-rf")==0){
      if(removeAll(argv[2])<=0){
        printf(2,"Error performing opertaion\n" );
  bd:	56                   	push   %esi
  be:	56                   	push   %esi
  bf:	68 fd 0a 00 00       	push   $0xafd
  c4:	6a 02                	push   $0x2
  c6:	e8 d5 06 00 00       	call   7a0 <printf>
  cb:	83 c4 10             	add    $0x10,%esp
  ce:	eb cf                	jmp    9f <main+0x9f>

000000d0 <strcats>:
#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"
#include "fs.h"
char* strcats(char* destination, char* source){
  d0:	55                   	push   %ebp
  d1:	89 e5                	mov    %esp,%ebp
  d3:	56                   	push   %esi
  d4:	53                   	push   %ebx
  d5:	8b 75 08             	mov    0x8(%ebp),%esi
  d8:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  int indexs = strlen(destination);
  db:	83 ec 0c             	sub    $0xc,%esp
  de:	56                   	push   %esi
  df:	83 c3 01             	add    $0x1,%ebx
  e2:	e8 a9 03 00 00       	call   490 <strlen>
  int i;
  for(i=0;source[i]!=' ';indexs++,i++){
  e7:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
  eb:	83 c4 10             	add    $0x10,%esp
  ee:	01 f0                	add    %esi,%eax
  f0:	80 fa 20             	cmp    $0x20,%dl
  f3:	74 18                	je     10d <strcats+0x3d>
  f5:	8d 76 00             	lea    0x0(%esi),%esi
    destination[indexs]=source[i];
  f8:	88 10                	mov    %dl,(%eax)
    destination[indexs+1]='\0';
  fa:	c6 40 01 00          	movb   $0x0,0x1(%eax)
  fe:	83 c3 01             	add    $0x1,%ebx
#include "fcntl.h"
#include "fs.h"
char* strcats(char* destination, char* source){
  int indexs = strlen(destination);
  int i;
  for(i=0;source[i]!=' ';indexs++,i++){
 101:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
 105:	83 c0 01             	add    $0x1,%eax
 108:	80 fa 20             	cmp    $0x20,%dl
 10b:	75 eb                	jne    f8 <strcats+0x28>
    destination[indexs]=source[i];
    destination[indexs+1]='\0';
  }
  return destination;
}
 10d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 110:	89 f0                	mov    %esi,%eax
 112:	5b                   	pop    %ebx
 113:	5e                   	pop    %esi
 114:	5d                   	pop    %ebp
 115:	c3                   	ret    
 116:	8d 76 00             	lea    0x0(%esi),%esi
 119:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000120 <fmtname>:
char* fmtname(char *path){
 120:	55                   	push   %ebp
 121:	89 e5                	mov    %esp,%ebp
 123:	56                   	push   %esi
 124:	53                   	push   %ebx
 125:	8b 5d 08             	mov    0x8(%ebp),%ebx
  static char buf[DIRSIZ+1];
  char *p;
  for(p=path+strlen(path); p >= path && *p != '/'; p--);
 128:	83 ec 0c             	sub    $0xc,%esp
 12b:	53                   	push   %ebx
 12c:	e8 5f 03 00 00       	call   490 <strlen>
 131:	83 c4 10             	add    $0x10,%esp
 134:	01 d8                	add    %ebx,%eax
 136:	73 0f                	jae    147 <fmtname+0x27>
 138:	eb 12                	jmp    14c <fmtname+0x2c>
 13a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 140:	83 e8 01             	sub    $0x1,%eax
 143:	39 c3                	cmp    %eax,%ebx
 145:	77 05                	ja     14c <fmtname+0x2c>
 147:	80 38 2f             	cmpb   $0x2f,(%eax)
 14a:	75 f4                	jne    140 <fmtname+0x20>
  p++;
 14c:	8d 58 01             	lea    0x1(%eax),%ebx
  if(strlen(p) >= DIRSIZ){
 14f:	83 ec 0c             	sub    $0xc,%esp
 152:	53                   	push   %ebx
 153:	e8 38 03 00 00       	call   490 <strlen>
 158:	83 c4 10             	add    $0x10,%esp
 15b:	83 f8 0d             	cmp    $0xd,%eax
 15e:	77 4a                	ja     1aa <fmtname+0x8a>
    return p;
  }
  memmove(buf, p, strlen(p));
 160:	83 ec 0c             	sub    $0xc,%esp
 163:	53                   	push   %ebx
 164:	e8 27 03 00 00       	call   490 <strlen>
 169:	83 c4 0c             	add    $0xc,%esp
 16c:	50                   	push   %eax
 16d:	53                   	push   %ebx
 16e:	68 cc 0e 00 00       	push   $0xecc
 173:	e8 a8 04 00 00       	call   620 <memmove>
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
 178:	89 1c 24             	mov    %ebx,(%esp)
 17b:	e8 10 03 00 00       	call   490 <strlen>
 180:	89 1c 24             	mov    %ebx,(%esp)
 183:	89 c6                	mov    %eax,%esi
  return buf;
 185:	bb cc 0e 00 00       	mov    $0xecc,%ebx
  p++;
  if(strlen(p) >= DIRSIZ){
    return p;
  }
  memmove(buf, p, strlen(p));
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
 18a:	e8 01 03 00 00       	call   490 <strlen>
 18f:	ba 0e 00 00 00       	mov    $0xe,%edx
 194:	83 c4 0c             	add    $0xc,%esp
 197:	05 cc 0e 00 00       	add    $0xecc,%eax
 19c:	29 f2                	sub    %esi,%edx
 19e:	52                   	push   %edx
 19f:	6a 20                	push   $0x20
 1a1:	50                   	push   %eax
 1a2:	e8 19 03 00 00       	call   4c0 <memset>
  return buf;
 1a7:	83 c4 10             	add    $0x10,%esp
}
 1aa:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1ad:	89 d8                	mov    %ebx,%eax
 1af:	5b                   	pop    %ebx
 1b0:	5e                   	pop    %esi
 1b1:	5d                   	pop    %ebp
 1b2:	c3                   	ret    
 1b3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000001c0 <removeFile>:
int removeFile(char* source){
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
  return unlink(source);
}
 1c3:	5d                   	pop    %ebp
  memmove(buf, p, strlen(p));
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  return buf;
}
int removeFile(char* source){
  return unlink(source);
 1c4:	e9 d9 04 00 00       	jmp    6a2 <unlink>
 1c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000001d0 <removeAll>:
}
int removeAll(char* source){
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	57                   	push   %edi
 1d4:	56                   	push   %esi
 1d5:	53                   	push   %ebx
 1d6:	81 ec 54 02 00 00    	sub    $0x254,%esp
 1dc:	8b 75 08             	mov    0x8(%ebp),%esi
  char buf[512], *p;
  int fd;
  struct dirent de;
  struct stat st;
  if((fd = open(source, 0)) < 0){
 1df:	6a 00                	push   $0x0
 1e1:	56                   	push   %esi
 1e2:	e8 ab 04 00 00       	call   692 <open>
 1e7:	83 c4 10             	add    $0x10,%esp
 1ea:	85 c0                	test   %eax,%eax
 1ec:	0f 88 be 01 00 00    	js     3b0 <removeAll+0x1e0>
 1f2:	89 c3                	mov    %eax,%ebx
    printf(2, "rm: cannot open %s\n", source);
    return 0;
  }

  if(fstat(fd, &st) < 0){
 1f4:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
 1fa:	83 ec 08             	sub    $0x8,%esp
 1fd:	50                   	push   %eax
 1fe:	53                   	push   %ebx
 1ff:	e8 a6 04 00 00       	call   6aa <fstat>
 204:	83 c4 10             	add    $0x10,%esp
 207:	85 c0                	test   %eax,%eax
 209:	0f 88 c1 01 00 00    	js     3d0 <removeAll+0x200>
    printf(2, "rm: cannot stat %s\n", source);
    close(fd);
    return 0;
  }

  switch(st.type){
 20f:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 216:	66 83 f8 01          	cmp    $0x1,%ax
 21a:	74 34                	je     250 <removeAll+0x80>
 21c:	66 83 f8 02          	cmp    $0x2,%ax
 220:	75 12                	jne    234 <removeAll+0x64>
  case T_FILE:
    printf(2, "Remove Fail!\n");
 222:	83 ec 08             	sub    $0x8,%esp
 225:	68 e8 0a 00 00       	push   $0xae8
 22a:	6a 02                	push   $0x2
 22c:	e8 6f 05 00 00       	call   7a0 <printf>
    break;
 231:	83 c4 10             	add    $0x10,%esp
        unlink(buf);
      }
    }
    break;
  }
  close(fd);
 234:	83 ec 0c             	sub    $0xc,%esp
 237:	53                   	push   %ebx
 238:	e8 3d 04 00 00       	call   67a <close>
  return 1;
 23d:	83 c4 10             	add    $0x10,%esp
 240:	b8 01 00 00 00       	mov    $0x1,%eax
}
 245:	8d 65 f4             	lea    -0xc(%ebp),%esp
 248:	5b                   	pop    %ebx
 249:	5e                   	pop    %esi
 24a:	5f                   	pop    %edi
 24b:	5d                   	pop    %ebp
 24c:	c3                   	ret    
 24d:	8d 76 00             	lea    0x0(%esi),%esi
  switch(st.type){
  case T_FILE:
    printf(2, "Remove Fail!\n");
    break;
  case T_DIR:
    strcpy(buf, source);
 250:	8d bd e8 fd ff ff    	lea    -0x218(%ebp),%edi
 256:	83 ec 08             	sub    $0x8,%esp
 259:	56                   	push   %esi
 25a:	8d b5 c4 fd ff ff    	lea    -0x23c(%ebp),%esi
 260:	57                   	push   %edi
 261:	e8 aa 01 00 00       	call   410 <strcpy>
    p = buf+strlen(buf);
 266:	89 3c 24             	mov    %edi,(%esp)
 269:	e8 22 02 00 00       	call   490 <strlen>
 26e:	8d 14 07             	lea    (%edi,%eax,1),%edx
    *p++ = '/';
 271:	8d 44 07 01          	lea    0x1(%edi,%eax,1),%eax
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 275:	83 c4 10             	add    $0x10,%esp
  case T_FILE:
    printf(2, "Remove Fail!\n");
    break;
  case T_DIR:
    strcpy(buf, source);
    p = buf+strlen(buf);
 278:	89 95 b0 fd ff ff    	mov    %edx,-0x250(%ebp)
    *p++ = '/';
 27e:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
 284:	c6 02 2f             	movb   $0x2f,(%edx)
 287:	89 f6                	mov    %esi,%esi
 289:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 290:	83 ec 04             	sub    $0x4,%esp
 293:	6a 10                	push   $0x10
 295:	56                   	push   %esi
 296:	53                   	push   %ebx
 297:	e8 ce 03 00 00       	call   66a <read>
 29c:	83 c4 10             	add    $0x10,%esp
 29f:	83 f8 10             	cmp    $0x10,%eax
 2a2:	75 90                	jne    234 <removeAll+0x64>
      if(de.inum == 0)
 2a4:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
 2ab:	00 
 2ac:	74 e2                	je     290 <removeAll+0xc0>
        continue;
      memmove(p, de.name, DIRSIZ);
 2ae:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 2b4:	83 ec 04             	sub    $0x4,%esp
 2b7:	6a 0e                	push   $0xe
 2b9:	50                   	push   %eax
 2ba:	ff b5 ac fd ff ff    	pushl  -0x254(%ebp)
 2c0:	e8 5b 03 00 00       	call   620 <memmove>
      p[DIRSIZ] = 0;
 2c5:	8b 85 b0 fd ff ff    	mov    -0x250(%ebp),%eax
 2cb:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
 2cf:	58                   	pop    %eax
 2d0:	8d 85 d4 fd ff ff    	lea    -0x22c(%ebp),%eax
 2d6:	5a                   	pop    %edx
 2d7:	50                   	push   %eax
 2d8:	57                   	push   %edi
 2d9:	e8 b2 02 00 00       	call   590 <stat>
 2de:	83 c4 10             	add    $0x10,%esp
 2e1:	85 c0                	test   %eax,%eax
 2e3:	0f 88 a7 00 00 00    	js     390 <removeAll+0x1c0>
        continue;
      }
      //printf(1, "%s %d %d %d %s\n", fmtname(buf), st.type, st.ino, st.size, buf);
      //printf(1,"%d %d %s\n",strcmp(temp,"."),strcmp(temp,".."),temp);
      //printf(1,"%s\n",buf);
      char *temp = fmtname(buf);
 2e9:	83 ec 0c             	sub    $0xc,%esp
 2ec:	57                   	push   %edi
 2ed:	e8 2e fe ff ff       	call   120 <fmtname>
      if(strcmp(temp,".")==32 || strcmp(temp,"..")==-14 || strcmp(temp,".")==46 || strcmp(temp,"..")==32){
 2f2:	5a                   	pop    %edx
 2f3:	59                   	pop    %ecx
 2f4:	68 f7 0a 00 00       	push   $0xaf7
 2f9:	50                   	push   %eax
 2fa:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
 300:	e8 3b 01 00 00       	call   440 <strcmp>
 305:	83 c4 10             	add    $0x10,%esp
 308:	83 f8 20             	cmp    $0x20,%eax
 30b:	74 83                	je     290 <removeAll+0xc0>
 30d:	83 ec 08             	sub    $0x8,%esp
 310:	68 f6 0a 00 00       	push   $0xaf6
 315:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
 31b:	e8 20 01 00 00       	call   440 <strcmp>
 320:	83 c4 10             	add    $0x10,%esp
 323:	83 f8 f2             	cmp    $0xfffffff2,%eax
 326:	0f 84 64 ff ff ff    	je     290 <removeAll+0xc0>
 32c:	83 ec 08             	sub    $0x8,%esp
 32f:	68 f7 0a 00 00       	push   $0xaf7
 334:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
 33a:	e8 01 01 00 00       	call   440 <strcmp>
 33f:	83 c4 10             	add    $0x10,%esp
 342:	83 f8 2e             	cmp    $0x2e,%eax
 345:	0f 84 45 ff ff ff    	je     290 <removeAll+0xc0>
 34b:	83 ec 08             	sub    $0x8,%esp
 34e:	68 f6 0a 00 00       	push   $0xaf6
 353:	ff b5 b4 fd ff ff    	pushl  -0x24c(%ebp)
 359:	e8 e2 00 00 00       	call   440 <strcmp>
 35e:	83 c4 10             	add    $0x10,%esp
 361:	83 f8 20             	cmp    $0x20,%eax
 364:	0f 84 26 ff ff ff    	je     290 <removeAll+0xc0>
        //printf(1,"Skipped %s\n",temp);
        continue;
      } 
      if(st.type == T_FILE){
 36a:	66 83 bd d4 fd ff ff 	cmpw   $0x2,-0x22c(%ebp)
 371:	02 
 372:	74 7e                	je     3f2 <removeAll+0x222>
        removeFile(buf);
      }else{
        removeAll(buf);
 374:	83 ec 0c             	sub    $0xc,%esp
 377:	57                   	push   %edi
 378:	e8 53 fe ff ff       	call   1d0 <removeAll>
        unlink(buf);
 37d:	89 3c 24             	mov    %edi,(%esp)
 380:	e8 1d 03 00 00       	call   6a2 <unlink>
 385:	83 c4 10             	add    $0x10,%esp
 388:	e9 03 ff ff ff       	jmp    290 <removeAll+0xc0>
 38d:	8d 76 00             	lea    0x0(%esi),%esi
      if(de.inum == 0)
        continue;
      memmove(p, de.name, DIRSIZ);
      p[DIRSIZ] = 0;
      if(stat(buf, &st) < 0){
        printf(2, "rm: cannot stat %s\n", buf);
 390:	83 ec 04             	sub    $0x4,%esp
 393:	57                   	push   %edi
 394:	68 d4 0a 00 00       	push   $0xad4
 399:	6a 02                	push   $0x2
 39b:	e8 00 04 00 00       	call   7a0 <printf>
        continue;
 3a0:	83 c4 10             	add    $0x10,%esp
 3a3:	e9 e8 fe ff ff       	jmp    290 <removeAll+0xc0>
 3a8:	90                   	nop
 3a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  char buf[512], *p;
  int fd;
  struct dirent de;
  struct stat st;
  if((fd = open(source, 0)) < 0){
    printf(2, "rm: cannot open %s\n", source);
 3b0:	83 ec 04             	sub    $0x4,%esp
 3b3:	56                   	push   %esi
 3b4:	68 c0 0a 00 00       	push   $0xac0
 3b9:	6a 02                	push   $0x2
 3bb:	e8 e0 03 00 00       	call   7a0 <printf>
    return 0;
 3c0:	83 c4 10             	add    $0x10,%esp
    }
    break;
  }
  close(fd);
  return 1;
}
 3c3:	8d 65 f4             	lea    -0xc(%ebp),%esp
  int fd;
  struct dirent de;
  struct stat st;
  if((fd = open(source, 0)) < 0){
    printf(2, "rm: cannot open %s\n", source);
    return 0;
 3c6:	31 c0                	xor    %eax,%eax
    }
    break;
  }
  close(fd);
  return 1;
}
 3c8:	5b                   	pop    %ebx
 3c9:	5e                   	pop    %esi
 3ca:	5f                   	pop    %edi
 3cb:	5d                   	pop    %ebp
 3cc:	c3                   	ret    
 3cd:	8d 76 00             	lea    0x0(%esi),%esi
    printf(2, "rm: cannot open %s\n", source);
    return 0;
  }

  if(fstat(fd, &st) < 0){
    printf(2, "rm: cannot stat %s\n", source);
 3d0:	83 ec 04             	sub    $0x4,%esp
 3d3:	56                   	push   %esi
 3d4:	68 d4 0a 00 00       	push   $0xad4
 3d9:	6a 02                	push   $0x2
 3db:	e8 c0 03 00 00       	call   7a0 <printf>
    close(fd);
 3e0:	89 1c 24             	mov    %ebx,(%esp)
 3e3:	e8 92 02 00 00       	call   67a <close>
    return 0;
 3e8:	83 c4 10             	add    $0x10,%esp
 3eb:	31 c0                	xor    %eax,%eax
 3ed:	e9 53 fe ff ff       	jmp    245 <removeAll+0x75>
  memmove(buf, p, strlen(p));
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  return buf;
}
int removeFile(char* source){
  return unlink(source);
 3f2:	83 ec 0c             	sub    $0xc,%esp
 3f5:	57                   	push   %edi
 3f6:	e8 a7 02 00 00       	call   6a2 <unlink>
 3fb:	83 c4 10             	add    $0x10,%esp
 3fe:	e9 8d fe ff ff       	jmp    290 <removeAll+0xc0>
 403:	66 90                	xchg   %ax,%ax
 405:	66 90                	xchg   %ax,%ax
 407:	66 90                	xchg   %ax,%ax
 409:	66 90                	xchg   %ax,%ax
 40b:	66 90                	xchg   %ax,%ax
 40d:	66 90                	xchg   %ax,%ax
 40f:	90                   	nop

00000410 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	53                   	push   %ebx
 414:	8b 45 08             	mov    0x8(%ebp),%eax
 417:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 41a:	89 c2                	mov    %eax,%edx
 41c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 420:	83 c1 01             	add    $0x1,%ecx
 423:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 427:	83 c2 01             	add    $0x1,%edx
 42a:	84 db                	test   %bl,%bl
 42c:	88 5a ff             	mov    %bl,-0x1(%edx)
 42f:	75 ef                	jne    420 <strcpy+0x10>
    ;
  return os;
}
 431:	5b                   	pop    %ebx
 432:	5d                   	pop    %ebp
 433:	c3                   	ret    
 434:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 43a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000440 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	56                   	push   %esi
 444:	53                   	push   %ebx
 445:	8b 55 08             	mov    0x8(%ebp),%edx
 448:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 44b:	0f b6 02             	movzbl (%edx),%eax
 44e:	0f b6 19             	movzbl (%ecx),%ebx
 451:	84 c0                	test   %al,%al
 453:	75 1e                	jne    473 <strcmp+0x33>
 455:	eb 29                	jmp    480 <strcmp+0x40>
 457:	89 f6                	mov    %esi,%esi
 459:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 460:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 463:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 466:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 469:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 46d:	84 c0                	test   %al,%al
 46f:	74 0f                	je     480 <strcmp+0x40>
 471:	89 f1                	mov    %esi,%ecx
 473:	38 d8                	cmp    %bl,%al
 475:	74 e9                	je     460 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 477:	29 d8                	sub    %ebx,%eax
}
 479:	5b                   	pop    %ebx
 47a:	5e                   	pop    %esi
 47b:	5d                   	pop    %ebp
 47c:	c3                   	ret    
 47d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 480:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 482:	29 d8                	sub    %ebx,%eax
}
 484:	5b                   	pop    %ebx
 485:	5e                   	pop    %esi
 486:	5d                   	pop    %ebp
 487:	c3                   	ret    
 488:	90                   	nop
 489:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000490 <strlen>:

uint
strlen(char *s)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 496:	80 39 00             	cmpb   $0x0,(%ecx)
 499:	74 12                	je     4ad <strlen+0x1d>
 49b:	31 d2                	xor    %edx,%edx
 49d:	8d 76 00             	lea    0x0(%esi),%esi
 4a0:	83 c2 01             	add    $0x1,%edx
 4a3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 4a7:	89 d0                	mov    %edx,%eax
 4a9:	75 f5                	jne    4a0 <strlen+0x10>
    ;
  return n;
}
 4ab:	5d                   	pop    %ebp
 4ac:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 4ad:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 4af:	5d                   	pop    %ebp
 4b0:	c3                   	ret    
 4b1:	eb 0d                	jmp    4c0 <memset>
 4b3:	90                   	nop
 4b4:	90                   	nop
 4b5:	90                   	nop
 4b6:	90                   	nop
 4b7:	90                   	nop
 4b8:	90                   	nop
 4b9:	90                   	nop
 4ba:	90                   	nop
 4bb:	90                   	nop
 4bc:	90                   	nop
 4bd:	90                   	nop
 4be:	90                   	nop
 4bf:	90                   	nop

000004c0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	57                   	push   %edi
 4c4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 4c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 4ca:	8b 45 0c             	mov    0xc(%ebp),%eax
 4cd:	89 d7                	mov    %edx,%edi
 4cf:	fc                   	cld    
 4d0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 4d2:	89 d0                	mov    %edx,%eax
 4d4:	5f                   	pop    %edi
 4d5:	5d                   	pop    %ebp
 4d6:	c3                   	ret    
 4d7:	89 f6                	mov    %esi,%esi
 4d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004e0 <strchr>:

char*
strchr(const char *s, char c)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	53                   	push   %ebx
 4e4:	8b 45 08             	mov    0x8(%ebp),%eax
 4e7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 4ea:	0f b6 10             	movzbl (%eax),%edx
 4ed:	84 d2                	test   %dl,%dl
 4ef:	74 1d                	je     50e <strchr+0x2e>
    if(*s == c)
 4f1:	38 d3                	cmp    %dl,%bl
 4f3:	89 d9                	mov    %ebx,%ecx
 4f5:	75 0d                	jne    504 <strchr+0x24>
 4f7:	eb 17                	jmp    510 <strchr+0x30>
 4f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 500:	38 ca                	cmp    %cl,%dl
 502:	74 0c                	je     510 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 504:	83 c0 01             	add    $0x1,%eax
 507:	0f b6 10             	movzbl (%eax),%edx
 50a:	84 d2                	test   %dl,%dl
 50c:	75 f2                	jne    500 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 50e:	31 c0                	xor    %eax,%eax
}
 510:	5b                   	pop    %ebx
 511:	5d                   	pop    %ebp
 512:	c3                   	ret    
 513:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 519:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000520 <gets>:

char*
gets(char *buf, int max)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	57                   	push   %edi
 524:	56                   	push   %esi
 525:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 526:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 528:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
 52b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 52e:	eb 29                	jmp    559 <gets+0x39>
    cc = read(0, &c, 1);
 530:	83 ec 04             	sub    $0x4,%esp
 533:	6a 01                	push   $0x1
 535:	57                   	push   %edi
 536:	6a 00                	push   $0x0
 538:	e8 2d 01 00 00       	call   66a <read>
    if(cc < 1)
 53d:	83 c4 10             	add    $0x10,%esp
 540:	85 c0                	test   %eax,%eax
 542:	7e 1d                	jle    561 <gets+0x41>
      break;
    buf[i++] = c;
 544:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 548:	8b 55 08             	mov    0x8(%ebp),%edx
 54b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 54d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 54f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 553:	74 1b                	je     570 <gets+0x50>
 555:	3c 0d                	cmp    $0xd,%al
 557:	74 17                	je     570 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 559:	8d 5e 01             	lea    0x1(%esi),%ebx
 55c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 55f:	7c cf                	jl     530 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 561:	8b 45 08             	mov    0x8(%ebp),%eax
 564:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 568:	8d 65 f4             	lea    -0xc(%ebp),%esp
 56b:	5b                   	pop    %ebx
 56c:	5e                   	pop    %esi
 56d:	5f                   	pop    %edi
 56e:	5d                   	pop    %ebp
 56f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 570:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 573:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 575:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 579:	8d 65 f4             	lea    -0xc(%ebp),%esp
 57c:	5b                   	pop    %ebx
 57d:	5e                   	pop    %esi
 57e:	5f                   	pop    %edi
 57f:	5d                   	pop    %ebp
 580:	c3                   	ret    
 581:	eb 0d                	jmp    590 <stat>
 583:	90                   	nop
 584:	90                   	nop
 585:	90                   	nop
 586:	90                   	nop
 587:	90                   	nop
 588:	90                   	nop
 589:	90                   	nop
 58a:	90                   	nop
 58b:	90                   	nop
 58c:	90                   	nop
 58d:	90                   	nop
 58e:	90                   	nop
 58f:	90                   	nop

00000590 <stat>:

int
stat(char *n, struct stat *st)
{
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	56                   	push   %esi
 594:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 595:	83 ec 08             	sub    $0x8,%esp
 598:	6a 00                	push   $0x0
 59a:	ff 75 08             	pushl  0x8(%ebp)
 59d:	e8 f0 00 00 00       	call   692 <open>
  if(fd < 0)
 5a2:	83 c4 10             	add    $0x10,%esp
 5a5:	85 c0                	test   %eax,%eax
 5a7:	78 27                	js     5d0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 5a9:	83 ec 08             	sub    $0x8,%esp
 5ac:	ff 75 0c             	pushl  0xc(%ebp)
 5af:	89 c3                	mov    %eax,%ebx
 5b1:	50                   	push   %eax
 5b2:	e8 f3 00 00 00       	call   6aa <fstat>
 5b7:	89 c6                	mov    %eax,%esi
  close(fd);
 5b9:	89 1c 24             	mov    %ebx,(%esp)
 5bc:	e8 b9 00 00 00       	call   67a <close>
  return r;
 5c1:	83 c4 10             	add    $0x10,%esp
 5c4:	89 f0                	mov    %esi,%eax
}
 5c6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5c9:	5b                   	pop    %ebx
 5ca:	5e                   	pop    %esi
 5cb:	5d                   	pop    %ebp
 5cc:	c3                   	ret    
 5cd:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 5d0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 5d5:	eb ef                	jmp    5c6 <stat+0x36>
 5d7:	89 f6                	mov    %esi,%esi
 5d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005e0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
 5e3:	53                   	push   %ebx
 5e4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 5e7:	0f be 11             	movsbl (%ecx),%edx
 5ea:	8d 42 d0             	lea    -0x30(%edx),%eax
 5ed:	3c 09                	cmp    $0x9,%al
 5ef:	b8 00 00 00 00       	mov    $0x0,%eax
 5f4:	77 1f                	ja     615 <atoi+0x35>
 5f6:	8d 76 00             	lea    0x0(%esi),%esi
 5f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 600:	8d 04 80             	lea    (%eax,%eax,4),%eax
 603:	83 c1 01             	add    $0x1,%ecx
 606:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 60a:	0f be 11             	movsbl (%ecx),%edx
 60d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 610:	80 fb 09             	cmp    $0x9,%bl
 613:	76 eb                	jbe    600 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
 615:	5b                   	pop    %ebx
 616:	5d                   	pop    %ebp
 617:	c3                   	ret    
 618:	90                   	nop
 619:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000620 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 620:	55                   	push   %ebp
 621:	89 e5                	mov    %esp,%ebp
 623:	56                   	push   %esi
 624:	53                   	push   %ebx
 625:	8b 5d 10             	mov    0x10(%ebp),%ebx
 628:	8b 45 08             	mov    0x8(%ebp),%eax
 62b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 62e:	85 db                	test   %ebx,%ebx
 630:	7e 14                	jle    646 <memmove+0x26>
 632:	31 d2                	xor    %edx,%edx
 634:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 638:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 63c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 63f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 642:	39 da                	cmp    %ebx,%edx
 644:	75 f2                	jne    638 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 646:	5b                   	pop    %ebx
 647:	5e                   	pop    %esi
 648:	5d                   	pop    %ebp
 649:	c3                   	ret    

0000064a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 64a:	b8 01 00 00 00       	mov    $0x1,%eax
 64f:	cd 40                	int    $0x40
 651:	c3                   	ret    

00000652 <exit>:
SYSCALL(exit)
 652:	b8 02 00 00 00       	mov    $0x2,%eax
 657:	cd 40                	int    $0x40
 659:	c3                   	ret    

0000065a <wait>:
SYSCALL(wait)
 65a:	b8 03 00 00 00       	mov    $0x3,%eax
 65f:	cd 40                	int    $0x40
 661:	c3                   	ret    

00000662 <pipe>:
SYSCALL(pipe)
 662:	b8 04 00 00 00       	mov    $0x4,%eax
 667:	cd 40                	int    $0x40
 669:	c3                   	ret    

0000066a <read>:
SYSCALL(read)
 66a:	b8 05 00 00 00       	mov    $0x5,%eax
 66f:	cd 40                	int    $0x40
 671:	c3                   	ret    

00000672 <write>:
SYSCALL(write)
 672:	b8 10 00 00 00       	mov    $0x10,%eax
 677:	cd 40                	int    $0x40
 679:	c3                   	ret    

0000067a <close>:
SYSCALL(close)
 67a:	b8 15 00 00 00       	mov    $0x15,%eax
 67f:	cd 40                	int    $0x40
 681:	c3                   	ret    

00000682 <kill>:
SYSCALL(kill)
 682:	b8 06 00 00 00       	mov    $0x6,%eax
 687:	cd 40                	int    $0x40
 689:	c3                   	ret    

0000068a <exec>:
SYSCALL(exec)
 68a:	b8 07 00 00 00       	mov    $0x7,%eax
 68f:	cd 40                	int    $0x40
 691:	c3                   	ret    

00000692 <open>:
SYSCALL(open)
 692:	b8 0f 00 00 00       	mov    $0xf,%eax
 697:	cd 40                	int    $0x40
 699:	c3                   	ret    

0000069a <mknod>:
SYSCALL(mknod)
 69a:	b8 11 00 00 00       	mov    $0x11,%eax
 69f:	cd 40                	int    $0x40
 6a1:	c3                   	ret    

000006a2 <unlink>:
SYSCALL(unlink)
 6a2:	b8 12 00 00 00       	mov    $0x12,%eax
 6a7:	cd 40                	int    $0x40
 6a9:	c3                   	ret    

000006aa <fstat>:
SYSCALL(fstat)
 6aa:	b8 08 00 00 00       	mov    $0x8,%eax
 6af:	cd 40                	int    $0x40
 6b1:	c3                   	ret    

000006b2 <link>:
SYSCALL(link)
 6b2:	b8 13 00 00 00       	mov    $0x13,%eax
 6b7:	cd 40                	int    $0x40
 6b9:	c3                   	ret    

000006ba <mkdir>:
SYSCALL(mkdir)
 6ba:	b8 14 00 00 00       	mov    $0x14,%eax
 6bf:	cd 40                	int    $0x40
 6c1:	c3                   	ret    

000006c2 <chdir>:
SYSCALL(chdir)
 6c2:	b8 09 00 00 00       	mov    $0x9,%eax
 6c7:	cd 40                	int    $0x40
 6c9:	c3                   	ret    

000006ca <dup>:
SYSCALL(dup)
 6ca:	b8 0a 00 00 00       	mov    $0xa,%eax
 6cf:	cd 40                	int    $0x40
 6d1:	c3                   	ret    

000006d2 <getpid>:
SYSCALL(getpid)
 6d2:	b8 0b 00 00 00       	mov    $0xb,%eax
 6d7:	cd 40                	int    $0x40
 6d9:	c3                   	ret    

000006da <sbrk>:
SYSCALL(sbrk)
 6da:	b8 0c 00 00 00       	mov    $0xc,%eax
 6df:	cd 40                	int    $0x40
 6e1:	c3                   	ret    

000006e2 <sleep>:
SYSCALL(sleep)
 6e2:	b8 0d 00 00 00       	mov    $0xd,%eax
 6e7:	cd 40                	int    $0x40
 6e9:	c3                   	ret    

000006ea <uptime>:
SYSCALL(uptime)
 6ea:	b8 0e 00 00 00       	mov    $0xe,%eax
 6ef:	cd 40                	int    $0x40
 6f1:	c3                   	ret    
 6f2:	66 90                	xchg   %ax,%ax
 6f4:	66 90                	xchg   %ax,%ax
 6f6:	66 90                	xchg   %ax,%ax
 6f8:	66 90                	xchg   %ax,%ax
 6fa:	66 90                	xchg   %ax,%ax
 6fc:	66 90                	xchg   %ax,%ax
 6fe:	66 90                	xchg   %ax,%ax

00000700 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 700:	55                   	push   %ebp
 701:	89 e5                	mov    %esp,%ebp
 703:	57                   	push   %edi
 704:	56                   	push   %esi
 705:	53                   	push   %ebx
 706:	89 c6                	mov    %eax,%esi
 708:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 70b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 70e:	85 db                	test   %ebx,%ebx
 710:	74 7e                	je     790 <printint+0x90>
 712:	89 d0                	mov    %edx,%eax
 714:	c1 e8 1f             	shr    $0x1f,%eax
 717:	84 c0                	test   %al,%al
 719:	74 75                	je     790 <printint+0x90>
    neg = 1;
    x = -xx;
 71b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 71d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 724:	f7 d8                	neg    %eax
 726:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 729:	31 ff                	xor    %edi,%edi
 72b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 72e:	89 ce                	mov    %ecx,%esi
 730:	eb 08                	jmp    73a <printint+0x3a>
 732:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 738:	89 cf                	mov    %ecx,%edi
 73a:	31 d2                	xor    %edx,%edx
 73c:	8d 4f 01             	lea    0x1(%edi),%ecx
 73f:	f7 f6                	div    %esi
 741:	0f b6 92 78 0b 00 00 	movzbl 0xb78(%edx),%edx
  }while((x /= base) != 0);
 748:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 74a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 74d:	75 e9                	jne    738 <printint+0x38>
  if(neg)
 74f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 752:	8b 75 c0             	mov    -0x40(%ebp),%esi
 755:	85 c0                	test   %eax,%eax
 757:	74 08                	je     761 <printint+0x61>
    buf[i++] = '-';
 759:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 75e:	8d 4f 02             	lea    0x2(%edi),%ecx
 761:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 765:	8d 76 00             	lea    0x0(%esi),%esi
 768:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 76b:	83 ec 04             	sub    $0x4,%esp
 76e:	83 ef 01             	sub    $0x1,%edi
 771:	6a 01                	push   $0x1
 773:	53                   	push   %ebx
 774:	56                   	push   %esi
 775:	88 45 d7             	mov    %al,-0x29(%ebp)
 778:	e8 f5 fe ff ff       	call   672 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 77d:	83 c4 10             	add    $0x10,%esp
 780:	39 df                	cmp    %ebx,%edi
 782:	75 e4                	jne    768 <printint+0x68>
    putc(fd, buf[i]);
}
 784:	8d 65 f4             	lea    -0xc(%ebp),%esp
 787:	5b                   	pop    %ebx
 788:	5e                   	pop    %esi
 789:	5f                   	pop    %edi
 78a:	5d                   	pop    %ebp
 78b:	c3                   	ret    
 78c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 790:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 792:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 799:	eb 8b                	jmp    726 <printint+0x26>
 79b:	90                   	nop
 79c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000007a0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 7a0:	55                   	push   %ebp
 7a1:	89 e5                	mov    %esp,%ebp
 7a3:	57                   	push   %edi
 7a4:	56                   	push   %esi
 7a5:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7a6:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 7a9:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7ac:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 7af:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7b2:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7b5:	0f b6 1e             	movzbl (%esi),%ebx
 7b8:	83 c6 01             	add    $0x1,%esi
 7bb:	84 db                	test   %bl,%bl
 7bd:	0f 84 b0 00 00 00    	je     873 <printf+0xd3>
 7c3:	31 d2                	xor    %edx,%edx
 7c5:	eb 39                	jmp    800 <printf+0x60>
 7c7:	89 f6                	mov    %esi,%esi
 7c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 7d0:	83 f8 25             	cmp    $0x25,%eax
 7d3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 7d6:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 7db:	74 18                	je     7f5 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 7dd:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 7e0:	83 ec 04             	sub    $0x4,%esp
 7e3:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 7e6:	6a 01                	push   $0x1
 7e8:	50                   	push   %eax
 7e9:	57                   	push   %edi
 7ea:	e8 83 fe ff ff       	call   672 <write>
 7ef:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 7f2:	83 c4 10             	add    $0x10,%esp
 7f5:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7f8:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 7fc:	84 db                	test   %bl,%bl
 7fe:	74 73                	je     873 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
 800:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 802:	0f be cb             	movsbl %bl,%ecx
 805:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 808:	74 c6                	je     7d0 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 80a:	83 fa 25             	cmp    $0x25,%edx
 80d:	75 e6                	jne    7f5 <printf+0x55>
      if(c == 'd'){
 80f:	83 f8 64             	cmp    $0x64,%eax
 812:	0f 84 f8 00 00 00    	je     910 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 818:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 81e:	83 f9 70             	cmp    $0x70,%ecx
 821:	74 5d                	je     880 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 823:	83 f8 73             	cmp    $0x73,%eax
 826:	0f 84 84 00 00 00    	je     8b0 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 82c:	83 f8 63             	cmp    $0x63,%eax
 82f:	0f 84 ea 00 00 00    	je     91f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 835:	83 f8 25             	cmp    $0x25,%eax
 838:	0f 84 c2 00 00 00    	je     900 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 83e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 841:	83 ec 04             	sub    $0x4,%esp
 844:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 848:	6a 01                	push   $0x1
 84a:	50                   	push   %eax
 84b:	57                   	push   %edi
 84c:	e8 21 fe ff ff       	call   672 <write>
 851:	83 c4 0c             	add    $0xc,%esp
 854:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 857:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 85a:	6a 01                	push   $0x1
 85c:	50                   	push   %eax
 85d:	57                   	push   %edi
 85e:	83 c6 01             	add    $0x1,%esi
 861:	e8 0c fe ff ff       	call   672 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 866:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 86a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 86d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 86f:	84 db                	test   %bl,%bl
 871:	75 8d                	jne    800 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 873:	8d 65 f4             	lea    -0xc(%ebp),%esp
 876:	5b                   	pop    %ebx
 877:	5e                   	pop    %esi
 878:	5f                   	pop    %edi
 879:	5d                   	pop    %ebp
 87a:	c3                   	ret    
 87b:	90                   	nop
 87c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 880:	83 ec 0c             	sub    $0xc,%esp
 883:	b9 10 00 00 00       	mov    $0x10,%ecx
 888:	6a 00                	push   $0x0
 88a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 88d:	89 f8                	mov    %edi,%eax
 88f:	8b 13                	mov    (%ebx),%edx
 891:	e8 6a fe ff ff       	call   700 <printint>
        ap++;
 896:	89 d8                	mov    %ebx,%eax
 898:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 89b:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 89d:	83 c0 04             	add    $0x4,%eax
 8a0:	89 45 d0             	mov    %eax,-0x30(%ebp)
 8a3:	e9 4d ff ff ff       	jmp    7f5 <printf+0x55>
 8a8:	90                   	nop
 8a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 8b0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8b3:	8b 18                	mov    (%eax),%ebx
        ap++;
 8b5:	83 c0 04             	add    $0x4,%eax
 8b8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 8bb:	b8 70 0b 00 00       	mov    $0xb70,%eax
 8c0:	85 db                	test   %ebx,%ebx
 8c2:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 8c5:	0f b6 03             	movzbl (%ebx),%eax
 8c8:	84 c0                	test   %al,%al
 8ca:	74 23                	je     8ef <printf+0x14f>
 8cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8d0:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8d3:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 8d6:	83 ec 04             	sub    $0x4,%esp
 8d9:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 8db:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8de:	50                   	push   %eax
 8df:	57                   	push   %edi
 8e0:	e8 8d fd ff ff       	call   672 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 8e5:	0f b6 03             	movzbl (%ebx),%eax
 8e8:	83 c4 10             	add    $0x10,%esp
 8eb:	84 c0                	test   %al,%al
 8ed:	75 e1                	jne    8d0 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 8ef:	31 d2                	xor    %edx,%edx
 8f1:	e9 ff fe ff ff       	jmp    7f5 <printf+0x55>
 8f6:	8d 76 00             	lea    0x0(%esi),%esi
 8f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 900:	83 ec 04             	sub    $0x4,%esp
 903:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 906:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 909:	6a 01                	push   $0x1
 90b:	e9 4c ff ff ff       	jmp    85c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 910:	83 ec 0c             	sub    $0xc,%esp
 913:	b9 0a 00 00 00       	mov    $0xa,%ecx
 918:	6a 01                	push   $0x1
 91a:	e9 6b ff ff ff       	jmp    88a <printf+0xea>
 91f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 922:	83 ec 04             	sub    $0x4,%esp
 925:	8b 03                	mov    (%ebx),%eax
 927:	6a 01                	push   $0x1
 929:	88 45 e4             	mov    %al,-0x1c(%ebp)
 92c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 92f:	50                   	push   %eax
 930:	57                   	push   %edi
 931:	e8 3c fd ff ff       	call   672 <write>
 936:	e9 5b ff ff ff       	jmp    896 <printf+0xf6>
 93b:	66 90                	xchg   %ax,%ax
 93d:	66 90                	xchg   %ax,%ax
 93f:	90                   	nop

00000940 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 940:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 941:	a1 dc 0e 00 00       	mov    0xedc,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 946:	89 e5                	mov    %esp,%ebp
 948:	57                   	push   %edi
 949:	56                   	push   %esi
 94a:	53                   	push   %ebx
 94b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 94e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 950:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 953:	39 c8                	cmp    %ecx,%eax
 955:	73 19                	jae    970 <free+0x30>
 957:	89 f6                	mov    %esi,%esi
 959:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 960:	39 d1                	cmp    %edx,%ecx
 962:	72 1c                	jb     980 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 964:	39 d0                	cmp    %edx,%eax
 966:	73 18                	jae    980 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 968:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 96a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 96c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 96e:	72 f0                	jb     960 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 970:	39 d0                	cmp    %edx,%eax
 972:	72 f4                	jb     968 <free+0x28>
 974:	39 d1                	cmp    %edx,%ecx
 976:	73 f0                	jae    968 <free+0x28>
 978:	90                   	nop
 979:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 980:	8b 73 fc             	mov    -0x4(%ebx),%esi
 983:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 986:	39 d7                	cmp    %edx,%edi
 988:	74 19                	je     9a3 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 98a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 98d:	8b 50 04             	mov    0x4(%eax),%edx
 990:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 993:	39 f1                	cmp    %esi,%ecx
 995:	74 23                	je     9ba <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 997:	89 08                	mov    %ecx,(%eax)
  freep = p;
 999:	a3 dc 0e 00 00       	mov    %eax,0xedc
}
 99e:	5b                   	pop    %ebx
 99f:	5e                   	pop    %esi
 9a0:	5f                   	pop    %edi
 9a1:	5d                   	pop    %ebp
 9a2:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 9a3:	03 72 04             	add    0x4(%edx),%esi
 9a6:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 9a9:	8b 10                	mov    (%eax),%edx
 9ab:	8b 12                	mov    (%edx),%edx
 9ad:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 9b0:	8b 50 04             	mov    0x4(%eax),%edx
 9b3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 9b6:	39 f1                	cmp    %esi,%ecx
 9b8:	75 dd                	jne    997 <free+0x57>
    p->s.size += bp->s.size;
 9ba:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 9bd:	a3 dc 0e 00 00       	mov    %eax,0xedc
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 9c2:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 9c5:	8b 53 f8             	mov    -0x8(%ebx),%edx
 9c8:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9ca:	5b                   	pop    %ebx
 9cb:	5e                   	pop    %esi
 9cc:	5f                   	pop    %edi
 9cd:	5d                   	pop    %ebp
 9ce:	c3                   	ret    
 9cf:	90                   	nop

000009d0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9d0:	55                   	push   %ebp
 9d1:	89 e5                	mov    %esp,%ebp
 9d3:	57                   	push   %edi
 9d4:	56                   	push   %esi
 9d5:	53                   	push   %ebx
 9d6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9d9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9dc:	8b 15 dc 0e 00 00    	mov    0xedc,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9e2:	8d 78 07             	lea    0x7(%eax),%edi
 9e5:	c1 ef 03             	shr    $0x3,%edi
 9e8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 9eb:	85 d2                	test   %edx,%edx
 9ed:	0f 84 a3 00 00 00    	je     a96 <malloc+0xc6>
 9f3:	8b 02                	mov    (%edx),%eax
 9f5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 9f8:	39 cf                	cmp    %ecx,%edi
 9fa:	76 74                	jbe    a70 <malloc+0xa0>
 9fc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 a02:	be 00 10 00 00       	mov    $0x1000,%esi
 a07:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 a0e:	0f 43 f7             	cmovae %edi,%esi
 a11:	ba 00 80 00 00       	mov    $0x8000,%edx
 a16:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 a1c:	0f 46 da             	cmovbe %edx,%ebx
 a1f:	eb 10                	jmp    a31 <malloc+0x61>
 a21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a28:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a2a:	8b 48 04             	mov    0x4(%eax),%ecx
 a2d:	39 cf                	cmp    %ecx,%edi
 a2f:	76 3f                	jbe    a70 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a31:	39 05 dc 0e 00 00    	cmp    %eax,0xedc
 a37:	89 c2                	mov    %eax,%edx
 a39:	75 ed                	jne    a28 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 a3b:	83 ec 0c             	sub    $0xc,%esp
 a3e:	53                   	push   %ebx
 a3f:	e8 96 fc ff ff       	call   6da <sbrk>
  if(p == (char*)-1)
 a44:	83 c4 10             	add    $0x10,%esp
 a47:	83 f8 ff             	cmp    $0xffffffff,%eax
 a4a:	74 1c                	je     a68 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 a4c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 a4f:	83 ec 0c             	sub    $0xc,%esp
 a52:	83 c0 08             	add    $0x8,%eax
 a55:	50                   	push   %eax
 a56:	e8 e5 fe ff ff       	call   940 <free>
  return freep;
 a5b:	8b 15 dc 0e 00 00    	mov    0xedc,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 a61:	83 c4 10             	add    $0x10,%esp
 a64:	85 d2                	test   %edx,%edx
 a66:	75 c0                	jne    a28 <malloc+0x58>
        return 0;
 a68:	31 c0                	xor    %eax,%eax
 a6a:	eb 1c                	jmp    a88 <malloc+0xb8>
 a6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 a70:	39 cf                	cmp    %ecx,%edi
 a72:	74 1c                	je     a90 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 a74:	29 f9                	sub    %edi,%ecx
 a76:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a79:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a7c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 a7f:	89 15 dc 0e 00 00    	mov    %edx,0xedc
      return (void*)(p + 1);
 a85:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 a88:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a8b:	5b                   	pop    %ebx
 a8c:	5e                   	pop    %esi
 a8d:	5f                   	pop    %edi
 a8e:	5d                   	pop    %ebp
 a8f:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 a90:	8b 08                	mov    (%eax),%ecx
 a92:	89 0a                	mov    %ecx,(%edx)
 a94:	eb e9                	jmp    a7f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 a96:	c7 05 dc 0e 00 00 e0 	movl   $0xee0,0xedc
 a9d:	0e 00 00 
 aa0:	c7 05 e0 0e 00 00 e0 	movl   $0xee0,0xee0
 aa7:	0e 00 00 
    base.s.size = 0;
 aaa:	b8 e0 0e 00 00       	mov    $0xee0,%eax
 aaf:	c7 05 e4 0e 00 00 00 	movl   $0x0,0xee4
 ab6:	00 00 00 
 ab9:	e9 3e ff ff ff       	jmp    9fc <malloc+0x2c>
