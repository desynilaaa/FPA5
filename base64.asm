
_base64:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

void Encode64(char* data,int lengths);
void Decode64(char* data, int lengths);
char* ToBinary(char* data, int dataLength, int limits);
char* base64_T ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
int main(int argc, char *argv[]){
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 28             	sub    $0x28,%esp
  14:	8b 01                	mov    (%ecx),%eax
  16:	8b 79 04             	mov    0x4(%ecx),%edi
  19:	89 c2                	mov    %eax,%edx
  1b:	89 45 e0             	mov    %eax,-0x20(%ebp)
    int i, dataLength=0;
    char* bufferInput;
    if(argv[2][0]!='\"'){
  1e:	8b 47 08             	mov    0x8(%edi),%eax
  21:	80 38 22             	cmpb   $0x22,(%eax)
  24:	0f 85 5d 01 00 00    	jne    187 <main+0x187>
        printf(1,"Invalid Syntax detected!\nSyntax base64 [--encode/--decode] \"[string to operate]\"\n");
        exit();
    }
    for(i=2;i<(argc);i++){
  2a:	31 f6                	xor    %esi,%esi
  2c:	83 fa 02             	cmp    $0x2,%edx
  2f:	bb 02 00 00 00       	mov    $0x2,%ebx
  34:	0f 8e 2c 01 00 00    	jle    166 <main+0x166>
  3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        dataLength+= strlen(argv[i])+1;
  40:	83 ec 0c             	sub    $0xc,%esp
  43:	ff 34 9f             	pushl  (%edi,%ebx,4)
    char* bufferInput;
    if(argv[2][0]!='\"'){
        printf(1,"Invalid Syntax detected!\nSyntax base64 [--encode/--decode] \"[string to operate]\"\n");
        exit();
    }
    for(i=2;i<(argc);i++){
  46:	83 c3 01             	add    $0x1,%ebx
        dataLength+= strlen(argv[i])+1;
  49:	e8 22 05 00 00       	call   570 <strlen>
    char* bufferInput;
    if(argv[2][0]!='\"'){
        printf(1,"Invalid Syntax detected!\nSyntax base64 [--encode/--decode] \"[string to operate]\"\n");
        exit();
    }
    for(i=2;i<(argc);i++){
  4e:	83 c4 10             	add    $0x10,%esp
  51:	39 5d e0             	cmp    %ebx,-0x20(%ebp)
        dataLength+= strlen(argv[i])+1;
  54:	8d 74 30 01          	lea    0x1(%eax,%esi,1),%esi
    char* bufferInput;
    if(argv[2][0]!='\"'){
        printf(1,"Invalid Syntax detected!\nSyntax base64 [--encode/--decode] \"[string to operate]\"\n");
        exit();
    }
    for(i=2;i<(argc);i++){
  58:	75 e6                	jne    40 <main+0x40>
        dataLength+= strlen(argv[i])+1;
    }
    dataLength--;
    bufferInput = (char*)malloc(sizeof(char)*(dataLength+argc));
  5a:	8b 5d e0             	mov    -0x20(%ebp),%ebx
  5d:	83 ec 0c             	sub    $0xc,%esp
  60:	8d 44 1e ff          	lea    -0x1(%esi,%ebx,1),%eax
  64:	50                   	push   %eax
  65:	e8 46 0a 00 00       	call   ab0 <malloc>
  6a:	89 45 dc             	mov    %eax,-0x24(%ebp)
  6d:	89 d8                	mov    %ebx,%eax
  6f:	83 c4 10             	add    $0x10,%esp
  72:	83 e8 01             	sub    $0x1,%eax
  75:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  7c:	bb 02 00 00 00       	mov    $0x2,%ebx
  81:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    int points=0;
    for(i=2;i<(argc);i++){
        //sprintf(bufferInput+strlen(bufferInput),"%s",argv[i]);
        int j;
        int tempLength = strlen(argv[i]);
  88:	83 ec 0c             	sub    $0xc,%esp
  8b:	ff 34 9f             	pushl  (%edi,%ebx,4)
  8e:	e8 dd 04 00 00       	call   570 <strlen>
            j=1;
        }else{
            j=0;
        }

        for(;j<tempLength;j++){
  93:	31 c9                	xor    %ecx,%ecx
    int points=0;
    for(i=2;i<(argc);i++){
        //sprintf(bufferInput+strlen(bufferInput),"%s",argv[i]);
        int j;
        int tempLength = strlen(argv[i]);
        if(i==2){
  95:	83 c4 10             	add    $0x10,%esp
            j=1;
        }else{
            j=0;
        }

        for(;j<tempLength;j++){
  98:	83 fb 02             	cmp    $0x2,%ebx
  9b:	0f 94 c1             	sete   %cl
  9e:	39 c8                	cmp    %ecx,%eax
  a0:	89 4d d8             	mov    %ecx,-0x28(%ebp)
  a3:	7e 25                	jle    ca <main+0xca>
            bufferInput[points]=argv[i][j];
  a5:	8b 75 e4             	mov    -0x1c(%ebp),%esi
            j=1;
        }else{
            j=0;
        }

        for(;j<tempLength;j++){
  a8:	89 ca                	mov    %ecx,%edx
            bufferInput[points]=argv[i][j];
  aa:	29 ce                	sub    %ecx,%esi
  ac:	03 75 dc             	add    -0x24(%ebp),%esi
  af:	90                   	nop
  b0:	8b 0c 9f             	mov    (%edi,%ebx,4),%ecx
  b3:	0f b6 0c 11          	movzbl (%ecx,%edx,1),%ecx
  b7:	88 0c 16             	mov    %cl,(%esi,%edx,1)
  ba:	83 c2 01             	add    $0x1,%edx
            j=1;
        }else{
            j=0;
        }

        for(;j<tempLength;j++){
  bd:	39 d0                	cmp    %edx,%eax
  bf:	75 ef                	jne    b0 <main+0xb0>
  c1:	03 45 e4             	add    -0x1c(%ebp),%eax
  c4:	2b 45 d8             	sub    -0x28(%ebp),%eax
  c7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
            if(argv[i][j]=='\\'){
                j++;
            }
            */
        }
        if(i<(argc-1)){
  ca:	3b 5d d4             	cmp    -0x2c(%ebp),%ebx
  cd:	0f 8d c7 00 00 00    	jge    19a <main+0x19a>
            bufferInput[points]=' ';
  d3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  d6:	8b 75 dc             	mov    -0x24(%ebp),%esi
  d9:	c6 04 06 20          	movb   $0x20,(%esi,%eax,1)
            points++;
  dd:	83 c0 01             	add    $0x1,%eax
  e0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
        dataLength+= strlen(argv[i])+1;
    }
    dataLength--;
    bufferInput = (char*)malloc(sizeof(char)*(dataLength+argc));
    int points=0;
    for(i=2;i<(argc);i++){
  e3:	83 c3 01             	add    $0x1,%ebx
  e6:	39 5d e0             	cmp    %ebx,-0x20(%ebp)
  e9:	75 9d                	jne    88 <main+0x88>
            bufferInput[points]='\0';
        }
    }
    //printf(1,"%d %d\n %s\n",points,dataLength,bufferInput);
    //printf(1,"%d %s\n",dataLength,bufferInput);
    if(strcmp(argv[1],"--encode")==0){
  eb:	83 ec 08             	sub    $0x8,%esp
  ee:	68 a5 0b 00 00       	push   $0xba5
  f3:	ff 77 04             	pushl  0x4(%edi)
  f6:	e8 25 04 00 00       	call   520 <strcmp>
  fb:	83 c4 10             	add    $0x10,%esp
  fe:	85 c0                	test   %eax,%eax
 100:	74 52                	je     154 <main+0x154>
        Encode64(bufferInput,points);
    }else if(strcmp(argv[1],"--decode")==0){
 102:	51                   	push   %ecx
 103:	51                   	push   %ecx
 104:	68 ae 0b 00 00       	push   $0xbae
 109:	ff 77 04             	pushl  0x4(%edi)
 10c:	e8 0f 04 00 00       	call   520 <strcmp>
 111:	83 c4 10             	add    $0x10,%esp
 114:	85 c0                	test   %eax,%eax
 116:	74 2a                	je     142 <main+0x142>
        Decode64(bufferInput,points);
    }else{
        printf(1,"No Valid Command Was Found!\n");
 118:	50                   	push   %eax
 119:	50                   	push   %eax
 11a:	68 b7 0b 00 00       	push   $0xbb7
 11f:	6a 01                	push   $0x1
 121:	e8 5a 07 00 00       	call   880 <printf>
 126:	83 c4 10             	add    $0x10,%esp
    Encode64("fooba");
    Encode64("foobar");
    Encode64("Callas, J., Donnerhacke, L., Finney, H., and R. Thayer,");
    Decode64("Q2FsbGFzLCBKLiwgRG9ubmVyaGFja2UsIEwuLCBGaW5uZXksIEguLCBhbmQgUi4gVGhheWVyLA==");
    */
    free(bufferInput);
 129:	83 ec 0c             	sub    $0xc,%esp
 12c:	ff 75 dc             	pushl  -0x24(%ebp)
 12f:	e8 ec 08 00 00       	call   a20 <free>
    return 0;
}
 134:	8d 65 f0             	lea    -0x10(%ebp),%esp
 137:	31 c0                	xor    %eax,%eax
 139:	59                   	pop    %ecx
 13a:	5b                   	pop    %ebx
 13b:	5e                   	pop    %esi
 13c:	5f                   	pop    %edi
 13d:	5d                   	pop    %ebp
 13e:	8d 61 fc             	lea    -0x4(%ecx),%esp
 141:	c3                   	ret    
    //printf(1,"%d %d\n %s\n",points,dataLength,bufferInput);
    //printf(1,"%d %s\n",dataLength,bufferInput);
    if(strcmp(argv[1],"--encode")==0){
        Encode64(bufferInput,points);
    }else if(strcmp(argv[1],"--decode")==0){
        Decode64(bufferInput,points);
 142:	52                   	push   %edx
 143:	52                   	push   %edx
 144:	ff 75 e4             	pushl  -0x1c(%ebp)
 147:	ff 75 dc             	pushl  -0x24(%ebp)
 14a:	e8 91 02 00 00       	call   3e0 <Decode64>
 14f:	83 c4 10             	add    $0x10,%esp
 152:	eb d5                	jmp    129 <main+0x129>
        }
    }
    //printf(1,"%d %d\n %s\n",points,dataLength,bufferInput);
    //printf(1,"%d %s\n",dataLength,bufferInput);
    if(strcmp(argv[1],"--encode")==0){
        Encode64(bufferInput,points);
 154:	53                   	push   %ebx
 155:	53                   	push   %ebx
 156:	ff 75 e4             	pushl  -0x1c(%ebp)
 159:	ff 75 dc             	pushl  -0x24(%ebp)
 15c:	e8 7f 01 00 00       	call   2e0 <Encode64>
 161:	83 c4 10             	add    $0x10,%esp
 164:	eb c3                	jmp    129 <main+0x129>
    }
    for(i=2;i<(argc);i++){
        dataLength+= strlen(argv[i])+1;
    }
    dataLength--;
    bufferInput = (char*)malloc(sizeof(char)*(dataLength+argc));
 166:	8b 45 e0             	mov    -0x20(%ebp),%eax
 169:	83 ec 0c             	sub    $0xc,%esp
 16c:	83 e8 01             	sub    $0x1,%eax
 16f:	50                   	push   %eax
 170:	e8 3b 09 00 00       	call   ab0 <malloc>
 175:	83 c4 10             	add    $0x10,%esp
 178:	89 45 dc             	mov    %eax,-0x24(%ebp)
    int points=0;
 17b:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 182:	e9 64 ff ff ff       	jmp    eb <main+0xeb>
char* base64_T ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
int main(int argc, char *argv[]){
    int i, dataLength=0;
    char* bufferInput;
    if(argv[2][0]!='\"'){
        printf(1,"Invalid Syntax detected!\nSyntax base64 [--encode/--decode] \"[string to operate]\"\n");
 187:	56                   	push   %esi
 188:	56                   	push   %esi
 189:	68 d4 0b 00 00       	push   $0xbd4
 18e:	6a 01                	push   $0x1
 190:	e8 eb 06 00 00       	call   880 <printf>
        exit();
 195:	e8 98 05 00 00       	call   732 <exit>
        }
        if(i<(argc-1)){
            bufferInput[points]=' ';
            points++;
        }else{
            points--;
 19a:	83 6d e4 01          	subl   $0x1,-0x1c(%ebp)
            bufferInput[points]='\0';
 19e:	8b 75 dc             	mov    -0x24(%ebp),%esi
        }
        if(i<(argc-1)){
            bufferInput[points]=' ';
            points++;
        }else{
            points--;
 1a1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
            bufferInput[points]='\0';
 1a4:	c6 04 06 00          	movb   $0x0,(%esi,%eax,1)
 1a8:	e9 36 ff ff ff       	jmp    e3 <main+0xe3>
 1ad:	66 90                	xchg   %ax,%ax
 1af:	90                   	nop

000001b0 <ToBinary>:
    }
    //printf("Length %d\n",length);
    free (binaryBuffer);
    printf(1,"\n");    
}
char* ToBinary(char* data,int dataLength, int limits){
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	57                   	push   %edi
 1b4:	56                   	push   %esi
 1b5:	53                   	push   %ebx
 1b6:	81 ec a8 00 00 00    	sub    $0xa8,%esp
 1bc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 1bf:	8b 75 08             	mov    0x8(%ebp),%esi
    char* tempBinaryBuffer = (char*)malloc(sizeof(char)*(dataLength+1)*(limits));
 1c2:	8d 43 01             	lea    0x1(%ebx),%eax
 1c5:	0f af 45 10          	imul   0x10(%ebp),%eax
 1c9:	50                   	push   %eax
 1ca:	e8 e1 08 00 00       	call   ab0 <malloc>
    int bufferLength = 0,i,temp;
    for(i=0,temp=data[i],i++;i<=dataLength;temp = data[i],i++){
 1cf:	83 c4 10             	add    $0x10,%esp
 1d2:	85 db                	test   %ebx,%ebx
    //printf("Length %d\n",length);
    free (binaryBuffer);
    printf(1,"\n");    
}
char* ToBinary(char* data,int dataLength, int limits){
    char* tempBinaryBuffer = (char*)malloc(sizeof(char)*(dataLength+1)*(limits));
 1d4:	89 85 6c ff ff ff    	mov    %eax,-0x94(%ebp)
    int bufferLength = 0,i,temp;
    for(i=0,temp=data[i],i++;i<=dataLength;temp = data[i],i++){
 1da:	0f be 06             	movsbl (%esi),%eax
 1dd:	0f 8e ef 00 00 00    	jle    2d2 <ToBinary+0x122>
 1e3:	01 f3                	add    %esi,%ebx
 1e5:	89 b5 74 ff ff ff    	mov    %esi,-0x8c(%ebp)
 1eb:	8b 75 10             	mov    0x10(%ebp),%esi
 1ee:	8d 7d 84             	lea    -0x7c(%ebp),%edi
 1f1:	03 7d 10             	add    0x10(%ebp),%edi
 1f4:	89 9d 68 ff ff ff    	mov    %ebx,-0x98(%ebp)
 1fa:	c7 85 70 ff ff ff 00 	movl   $0x0,-0x90(%ebp)
 201:	00 00 00 
 204:	83 ee 01             	sub    $0x1,%esi
 207:	89 b5 64 ff ff ff    	mov    %esi,-0x9c(%ebp)
 20d:	8d 75 83             	lea    -0x7d(%ebp),%esi
 210:	31 d2                	xor    %edx,%edx
 212:	eb 06                	jmp    21a <ToBinary+0x6a>
 214:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        } while (temp=temp/2);
        */
        while(1){
            calc = temp%2;
            tempBuffer[tempLoc] = calc;
            tempLoc++;
 218:	89 da                	mov    %ebx,%edx
            tempLoc++;
        } while (temp=temp/2);
        */
        while(1){
            calc = temp%2;
            tempBuffer[tempLoc] = calc;
 21a:	89 c3                	mov    %eax,%ebx
 21c:	c1 eb 1f             	shr    $0x1f,%ebx
 21f:	8d 0c 18             	lea    (%eax,%ebx,1),%ecx
 222:	83 e1 01             	and    $0x1,%ecx
 225:	29 d9                	sub    %ebx,%ecx
            tempLoc++;
 227:	8d 5a 01             	lea    0x1(%edx),%ebx
            tempLoc++;
        } while (temp=temp/2);
        */
        while(1){
            calc = temp%2;
            tempBuffer[tempLoc] = calc;
 22a:	88 4c 15 84          	mov    %cl,-0x7c(%ebp,%edx,1)
            tempLoc++;
            if(!(temp = temp/2)){
 22e:	89 c1                	mov    %eax,%ecx
 230:	c1 e9 1f             	shr    $0x1f,%ecx
 233:	01 c8                	add    %ecx,%eax
 235:	d1 f8                	sar    %eax
 237:	75 df                	jne    218 <ToBinary+0x68>
                tempBuffer[tempLoc] = calc;
                tempLoc++;
                break;
            }
        }
        while(tempLoc<limits){
 239:	8d 42 02             	lea    0x2(%edx),%eax
 23c:	39 45 10             	cmp    %eax,0x10(%ebp)
            calc = temp%2;
            tempBuffer[tempLoc] = calc;
            tempLoc++;
            if(!(temp = temp/2)){
                calc = temp%2;
                tempBuffer[tempLoc] = calc;
 23f:	c6 44 1d 84 00       	movb   $0x0,-0x7c(%ebp,%ebx,1)
                tempLoc++;
                break;
            }
        }
        while(tempLoc<limits){
 244:	7e 14                	jle    25a <ToBinary+0xaa>
 246:	8d 55 84             	lea    -0x7c(%ebp),%edx
 249:	01 d0                	add    %edx,%eax
 24b:	90                   	nop
 24c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
            tempBuffer[tempLoc++] = 0;
 250:	c6 00 00             	movb   $0x0,(%eax)
 253:	83 c0 01             	add    $0x1,%eax
                tempBuffer[tempLoc] = calc;
                tempLoc++;
                break;
            }
        }
        while(tempLoc<limits){
 256:	39 f8                	cmp    %edi,%eax
 258:	75 f6                	jne    250 <ToBinary+0xa0>
            tempBuffer[tempLoc++] = 0;
        }

        for(j=limits-1;j>=0;j--){
 25a:	8b 45 10             	mov    0x10(%ebp),%eax
 25d:	85 c0                	test   %eax,%eax
 25f:	7e 38                	jle    299 <ToBinary+0xe9>
 261:	8d 45 84             	lea    -0x7c(%ebp),%eax
 264:	8b 95 6c ff ff ff    	mov    -0x94(%ebp),%edx
 26a:	03 85 64 ff ff ff    	add    -0x9c(%ebp),%eax
 270:	03 95 70 ff ff ff    	add    -0x90(%ebp),%edx
 276:	8d 76 00             	lea    0x0(%esi),%esi
 279:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
            tempBinaryBuffer[bufferLength] = tempBuffer[j];
 280:	0f b6 08             	movzbl (%eax),%ecx
 283:	83 e8 01             	sub    $0x1,%eax
 286:	83 c2 01             	add    $0x1,%edx
 289:	88 4a ff             	mov    %cl,-0x1(%edx)
        }
        while(tempLoc<limits){
            tempBuffer[tempLoc++] = 0;
        }

        for(j=limits-1;j>=0;j--){
 28c:	39 f0                	cmp    %esi,%eax
 28e:	75 f0                	jne    280 <ToBinary+0xd0>
 290:	8b 55 10             	mov    0x10(%ebp),%edx
 293:	01 95 70 ff ff ff    	add    %edx,-0x90(%ebp)
    printf(1,"\n");    
}
char* ToBinary(char* data,int dataLength, int limits){
    char* tempBinaryBuffer = (char*)malloc(sizeof(char)*(dataLength+1)*(limits));
    int bufferLength = 0,i,temp;
    for(i=0,temp=data[i],i++;i<=dataLength;temp = data[i],i++){
 299:	8b 95 74 ff ff ff    	mov    -0x8c(%ebp),%edx
 29f:	0f be 42 01          	movsbl 0x1(%edx),%eax
 2a3:	83 c2 01             	add    $0x1,%edx
 2a6:	3b 95 68 ff ff ff    	cmp    -0x98(%ebp),%edx
 2ac:	89 95 74 ff ff ff    	mov    %edx,-0x8c(%ebp)
 2b2:	0f 85 58 ff ff ff    	jne    210 <ToBinary+0x60>
 2b8:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
            bufferLength++;
        }
        //printf(1,"\n");
    }
    
    tempBinaryBuffer[bufferLength] = -1;
 2be:	8b b5 6c ff ff ff    	mov    -0x94(%ebp),%esi
 2c4:	c6 04 06 ff          	movb   $0xff,(%esi,%eax,1)
    //printf(1,"Buffer Length %d\n",bufferLength);
    return tempBinaryBuffer;
}
 2c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2cb:	89 f0                	mov    %esi,%eax
 2cd:	5b                   	pop    %ebx
 2ce:	5e                   	pop    %esi
 2cf:	5f                   	pop    %edi
 2d0:	5d                   	pop    %ebp
 2d1:	c3                   	ret    
    printf(1,"\n");    
}
char* ToBinary(char* data,int dataLength, int limits){
    char* tempBinaryBuffer = (char*)malloc(sizeof(char)*(dataLength+1)*(limits));
    int bufferLength = 0,i,temp;
    for(i=0,temp=data[i],i++;i<=dataLength;temp = data[i],i++){
 2d2:	31 c0                	xor    %eax,%eax
 2d4:	eb e8                	jmp    2be <ToBinary+0x10e>
 2d6:	8d 76 00             	lea    0x0(%esi),%esi
 2d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002e0 <Encode64>:
    Decode64("Q2FsbGFzLCBKLiwgRG9ubmVyaGFja2UsIEwuLCBGaW5uZXksIEguLCBhbmQgUi4gVGhheWVyLA==");
    */
    free(bufferInput);
    return 0;
}
void Encode64(char* data, int lengths){
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	57                   	push   %edi
 2e4:	56                   	push   %esi
 2e5:	53                   	push   %ebx
    char* binaryBuffer = ToBinary(data,lengths,8);
    //printf(1,"%d %s\n",strlen(data),data);
    int temp = 0,powTwo=32,length=0,i;
 2e6:	31 ff                	xor    %edi,%edi
 2e8:	31 db                	xor    %ebx,%ebx
    Decode64("Q2FsbGFzLCBKLiwgRG9ubmVyaGFja2UsIEwuLCBGaW5uZXksIEguLCBhbmQgUi4gVGhheWVyLA==");
    */
    free(bufferInput);
    return 0;
}
void Encode64(char* data, int lengths){
 2ea:	83 ec 10             	sub    $0x10,%esp
    char* binaryBuffer = ToBinary(data,lengths,8);
 2ed:	6a 08                	push   $0x8
 2ef:	ff 75 0c             	pushl  0xc(%ebp)
 2f2:	ff 75 08             	pushl  0x8(%ebp)
 2f5:	e8 b6 fe ff ff       	call   1b0 <ToBinary>
    //printf(1,"%d %s\n",strlen(data),data);
    int temp = 0,powTwo=32,length=0,i;
    for(i=0;binaryBuffer[i]!=-1;i++){
 2fa:	83 c4 10             	add    $0x10,%esp
    */
    free(bufferInput);
    return 0;
}
void Encode64(char* data, int lengths){
    char* binaryBuffer = ToBinary(data,lengths,8);
 2fd:	89 c6                	mov    %eax,%esi
    //printf(1,"%d %s\n",strlen(data),data);
    int temp = 0,powTwo=32,length=0,i;
 2ff:	b9 20 00 00 00       	mov    $0x20,%ecx
 304:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    for(i=0;binaryBuffer[i]!=-1;i++){
 308:	0f be 04 1e          	movsbl (%esi,%ebx,1),%eax
 30c:	3c ff                	cmp    $0xff,%al
 30e:	74 3a                	je     34a <Encode64+0x6a>
        length++;
        temp += powTwo * binaryBuffer[i];
 310:	0f af c1             	imul   %ecx,%eax
void Encode64(char* data, int lengths){
    char* binaryBuffer = ToBinary(data,lengths,8);
    //printf(1,"%d %s\n",strlen(data),data);
    int temp = 0,powTwo=32,length=0,i;
    for(i=0;binaryBuffer[i]!=-1;i++){
        length++;
 313:	83 c3 01             	add    $0x1,%ebx
        temp += powTwo * binaryBuffer[i];
 316:	01 c7                	add    %eax,%edi
        powTwo/=2;
        //printf(1,"%d",binaryBuffer[i]);        
        if((i+1)%6==0 || binaryBuffer[i+1]==-1){
 318:	b8 ab aa aa 2a       	mov    $0x2aaaaaab,%eax
 31d:	f7 eb                	imul   %ebx
 31f:	89 d8                	mov    %ebx,%eax
 321:	c1 f8 1f             	sar    $0x1f,%eax
 324:	29 c2                	sub    %eax,%edx
 326:	8d 04 52             	lea    (%edx,%edx,2),%eax
 329:	01 c0                	add    %eax,%eax
 32b:	39 c3                	cmp    %eax,%ebx
 32d:	0f 84 7d 00 00 00    	je     3b0 <Encode64+0xd0>
 333:	80 3c 1e ff          	cmpb   $0xff,(%esi,%ebx,1)
 337:	74 77                	je     3b0 <Encode64+0xd0>
    //printf(1,"%d %s\n",strlen(data),data);
    int temp = 0,powTwo=32,length=0,i;
    for(i=0;binaryBuffer[i]!=-1;i++){
        length++;
        temp += powTwo * binaryBuffer[i];
        powTwo/=2;
 339:	89 c8                	mov    %ecx,%eax
 33b:	c1 e8 1f             	shr    $0x1f,%eax
 33e:	01 c1                	add    %eax,%ecx
}
void Encode64(char* data, int lengths){
    char* binaryBuffer = ToBinary(data,lengths,8);
    //printf(1,"%d %s\n",strlen(data),data);
    int temp = 0,powTwo=32,length=0,i;
    for(i=0;binaryBuffer[i]!=-1;i++){
 340:	0f be 04 1e          	movsbl (%esi,%ebx,1),%eax
        length++;
        temp += powTwo * binaryBuffer[i];
        powTwo/=2;
 344:	d1 f9                	sar    %ecx
}
void Encode64(char* data, int lengths){
    char* binaryBuffer = ToBinary(data,lengths,8);
    //printf(1,"%d %s\n",strlen(data),data);
    int temp = 0,powTwo=32,length=0,i;
    for(i=0;binaryBuffer[i]!=-1;i++){
 346:	3c ff                	cmp    $0xff,%al
 348:	75 c6                	jne    310 <Encode64+0x30>
            printf(1,"%c",base64_T[temp]);
            temp = 0;    
        }
    }
    //printf("%d",length%6);
    for(int i=(6 - length%6)/2;i>0 && i<3;i--){
 34a:	89 d8                	mov    %ebx,%eax
 34c:	ba ab aa aa 2a       	mov    $0x2aaaaaab,%edx
 351:	f7 ea                	imul   %edx
 353:	89 d8                	mov    %ebx,%eax
 355:	c1 f8 1f             	sar    $0x1f,%eax
 358:	29 c2                	sub    %eax,%edx
 35a:	8d 04 52             	lea    (%edx,%edx,2),%eax
 35d:	01 c0                	add    %eax,%eax
 35f:	29 d8                	sub    %ebx,%eax
 361:	8d 58 06             	lea    0x6(%eax),%ebx
 364:	d1 fb                	sar    %ebx
 366:	83 eb 01             	sub    $0x1,%ebx
 369:	83 fb 01             	cmp    $0x1,%ebx
 36c:	77 1c                	ja     38a <Encode64+0xaa>
 36e:	66 90                	xchg   %ax,%ax
        printf(1,"=");
 370:	83 ec 08             	sub    $0x8,%esp
 373:	83 eb 01             	sub    $0x1,%ebx
 376:	68 a3 0b 00 00       	push   $0xba3
 37b:	6a 01                	push   $0x1
 37d:	e8 fe 04 00 00       	call   880 <printf>
            printf(1,"%c",base64_T[temp]);
            temp = 0;    
        }
    }
    //printf("%d",length%6);
    for(int i=(6 - length%6)/2;i>0 && i<3;i--){
 382:	83 c4 10             	add    $0x10,%esp
 385:	83 fb 01             	cmp    $0x1,%ebx
 388:	76 e6                	jbe    370 <Encode64+0x90>
        printf(1,"=");
    }
    printf(1,"\n");
 38a:	83 ec 08             	sub    $0x8,%esp
 38d:	68 d2 0b 00 00       	push   $0xbd2
 392:	6a 01                	push   $0x1
 394:	e8 e7 04 00 00       	call   880 <printf>
    free(binaryBuffer);
 399:	89 75 08             	mov    %esi,0x8(%ebp)
 39c:	83 c4 10             	add    $0x10,%esp
}
 39f:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3a2:	5b                   	pop    %ebx
 3a3:	5e                   	pop    %esi
 3a4:	5f                   	pop    %edi
 3a5:	5d                   	pop    %ebp
    //printf("%d",length%6);
    for(int i=(6 - length%6)/2;i>0 && i<3;i--){
        printf(1,"=");
    }
    printf(1,"\n");
    free(binaryBuffer);
 3a6:	e9 75 06 00 00       	jmp    a20 <free>
 3ab:	90                   	nop
 3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        powTwo/=2;
        //printf(1,"%d",binaryBuffer[i]);        
        if((i+1)%6==0 || binaryBuffer[i+1]==-1){
            powTwo = 32;
            //printf(1,"<->");
            printf(1,"%c",base64_T[temp]);
 3b0:	a1 c0 0f 00 00       	mov    0xfc0,%eax
 3b5:	83 ec 04             	sub    $0x4,%esp
 3b8:	0f be 04 38          	movsbl (%eax,%edi,1),%eax
            temp = 0;    
 3bc:	31 ff                	xor    %edi,%edi
        powTwo/=2;
        //printf(1,"%d",binaryBuffer[i]);        
        if((i+1)%6==0 || binaryBuffer[i+1]==-1){
            powTwo = 32;
            //printf(1,"<->");
            printf(1,"%c",base64_T[temp]);
 3be:	50                   	push   %eax
 3bf:	68 a0 0b 00 00       	push   $0xba0
 3c4:	6a 01                	push   $0x1
 3c6:	e8 b5 04 00 00       	call   880 <printf>
 3cb:	83 c4 10             	add    $0x10,%esp
        length++;
        temp += powTwo * binaryBuffer[i];
        powTwo/=2;
        //printf(1,"%d",binaryBuffer[i]);        
        if((i+1)%6==0 || binaryBuffer[i+1]==-1){
            powTwo = 32;
 3ce:	b9 20 00 00 00       	mov    $0x20,%ecx
 3d3:	e9 30 ff ff ff       	jmp    308 <Encode64+0x28>
 3d8:	90                   	nop
 3d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003e0 <Decode64>:
        printf(1,"=");
    }
    printf(1,"\n");
    free(binaryBuffer);
}
void Decode64(char* data, int lengths){
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	57                   	push   %edi
 3e4:	56                   	push   %esi
 3e5:	53                   	push   %ebx
 3e6:	83 ec 18             	sub    $0x18,%esp
 3e9:	8b 5d 08             	mov    0x8(%ebp),%ebx
    
    char* T_Data = (char*)malloc(sizeof(char)*(lengths));
 3ec:	ff 75 0c             	pushl  0xc(%ebp)
 3ef:	e8 bc 06 00 00       	call   ab0 <malloc>
    int special=0,dataLength = 0,temp = 0,powTwo=128;
    for(int i=0;data[i]!='\0';i++){
 3f4:	0f b6 13             	movzbl (%ebx),%edx
 3f7:	83 c4 10             	add    $0x10,%esp
    printf(1,"\n");
    free(binaryBuffer);
}
void Decode64(char* data, int lengths){
    
    char* T_Data = (char*)malloc(sizeof(char)*(lengths));
 3fa:	89 c7                	mov    %eax,%edi
    int special=0,dataLength = 0,temp = 0,powTwo=128;
    for(int i=0;data[i]!='\0';i++){
 3fc:	84 d2                	test   %dl,%dl
 3fe:	0f 84 de 00 00 00    	je     4e2 <Decode64+0x102>
 404:	8d 4b 01             	lea    0x1(%ebx),%ecx
 407:	31 db                	xor    %ebx,%ebx
 409:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        if(data[i]=='='){
 410:	80 fa 3d             	cmp    $0x3d,%dl
 413:	74 31                	je     446 <Decode64+0x66>
            special++;
        }else{
            int offset = 53;
            if(data[i] >= 'a'){
 415:	80 fa 60             	cmp    $0x60,%dl
 418:	8d 42 b9             	lea    -0x47(%edx),%eax
 41b:	7f 23                	jg     440 <Decode64+0x60>
                offset = 26 + data[i]-'a';
            }else if(data[i] >= 'A'){
 41d:	80 fa 40             	cmp    $0x40,%dl
 420:	8d 42 bf             	lea    -0x41(%edx),%eax
 423:	7f 1b                	jg     440 <Decode64+0x60>
                offset = 0 + data[i]-'A';
            }else{
                if(data[i]=='+'){
 425:	80 fa 2b             	cmp    $0x2b,%dl
 428:	b8 3e 00 00 00       	mov    $0x3e,%eax
 42d:	74 11                	je     440 <Decode64+0x60>
 42f:	8d 72 04             	lea    0x4(%edx),%esi
 432:	80 fa 2f             	cmp    $0x2f,%dl
 435:	b8 3f 00 00 00       	mov    $0x3f,%eax
 43a:	0f 45 c6             	cmovne %esi,%eax
 43d:	8d 76 00             	lea    0x0(%esi),%esi
                }else{
                    offset += data[i] - '1';
                }
            }
            //printf("Offset %d char : %c result %c\n",offset,data[i],base64_T[offset]);
            T_Data[dataLength] = offset;
 440:	88 04 1f             	mov    %al,(%edi,%ebx,1)
            dataLength++;
 443:	83 c3 01             	add    $0x1,%ebx
 446:	83 c1 01             	add    $0x1,%ecx
}
void Decode64(char* data, int lengths){
    
    char* T_Data = (char*)malloc(sizeof(char)*(lengths));
    int special=0,dataLength = 0,temp = 0,powTwo=128;
    for(int i=0;data[i]!='\0';i++){
 449:	0f b6 51 ff          	movzbl -0x1(%ecx),%edx
 44d:	84 d2                	test   %dl,%dl
 44f:	75 bf                	jne    410 <Decode64+0x30>
            T_Data[dataLength] = offset;
            dataLength++;
        }
    }   
    
    char* binaryBuffer = ToBinary(T_Data,dataLength,6);
 451:	83 ec 04             	sub    $0x4,%esp
    free(binaryBuffer);
}
void Decode64(char* data, int lengths){
    
    char* T_Data = (char*)malloc(sizeof(char)*(lengths));
    int special=0,dataLength = 0,temp = 0,powTwo=128;
 454:	31 f6                	xor    %esi,%esi
            T_Data[dataLength] = offset;
            dataLength++;
        }
    }   
    
    char* binaryBuffer = ToBinary(T_Data,dataLength,6);
 456:	6a 06                	push   $0x6
 458:	53                   	push   %ebx
    int length = 0;
    for(int i=0;binaryBuffer[i]!=-1;i++){
 459:	31 db                	xor    %ebx,%ebx
            T_Data[dataLength] = offset;
            dataLength++;
        }
    }   
    
    char* binaryBuffer = ToBinary(T_Data,dataLength,6);
 45b:	57                   	push   %edi
 45c:	e8 4f fd ff ff       	call   1b0 <ToBinary>
    int length = 0;
    for(int i=0;binaryBuffer[i]!=-1;i++){
 461:	83 c4 10             	add    $0x10,%esp
            T_Data[dataLength] = offset;
            dataLength++;
        }
    }   
    
    char* binaryBuffer = ToBinary(T_Data,dataLength,6);
 464:	89 c7                	mov    %eax,%edi
    free(binaryBuffer);
}
void Decode64(char* data, int lengths){
    
    char* T_Data = (char*)malloc(sizeof(char)*(lengths));
    int special=0,dataLength = 0,temp = 0,powTwo=128;
 466:	b9 80 00 00 00       	mov    $0x80,%ecx
 46b:	90                   	nop
 46c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        }
    }   
    
    char* binaryBuffer = ToBinary(T_Data,dataLength,6);
    int length = 0;
    for(int i=0;binaryBuffer[i]!=-1;i++){
 470:	0f be 14 1f          	movsbl (%edi,%ebx,1),%edx
 474:	80 fa ff             	cmp    $0xff,%dl
 477:	74 43                	je     4bc <Decode64+0xdc>
        length++;
        temp += powTwo * binaryBuffer[i];
 479:	0f af d1             	imul   %ecx,%edx
        powTwo/=2;
 47c:	89 c8                	mov    %ecx,%eax
        //printf("%d",binaryBuffer[i]);
        if(((i+1)%8==0 || binaryBuffer[i+1]==-1) && temp != 0){
 47e:	83 c3 01             	add    $0x1,%ebx
    char* binaryBuffer = ToBinary(T_Data,dataLength,6);
    int length = 0;
    for(int i=0;binaryBuffer[i]!=-1;i++){
        length++;
        temp += powTwo * binaryBuffer[i];
        powTwo/=2;
 481:	c1 e8 1f             	shr    $0x1f,%eax
 484:	01 c1                	add    %eax,%ecx
    
    char* binaryBuffer = ToBinary(T_Data,dataLength,6);
    int length = 0;
    for(int i=0;binaryBuffer[i]!=-1;i++){
        length++;
        temp += powTwo * binaryBuffer[i];
 486:	01 d6                	add    %edx,%esi
        powTwo/=2;
 488:	d1 f9                	sar    %ecx
        //printf("%d",binaryBuffer[i]);
        if(((i+1)%8==0 || binaryBuffer[i+1]==-1) && temp != 0){
 48a:	f6 c3 07             	test   $0x7,%bl
 48d:	74 06                	je     495 <Decode64+0xb5>
 48f:	80 3c 1f ff          	cmpb   $0xff,(%edi,%ebx,1)
 493:	75 db                	jne    470 <Decode64+0x90>
 495:	85 f6                	test   %esi,%esi
 497:	74 d7                	je     470 <Decode64+0x90>
            powTwo = 128;
            //printf("<->");
            printf(1,"%c",temp);
 499:	83 ec 04             	sub    $0x4,%esp
 49c:	56                   	push   %esi
 49d:	68 a0 0b 00 00       	push   $0xba0
            temp = 0;    
 4a2:	31 f6                	xor    %esi,%esi
        powTwo/=2;
        //printf("%d",binaryBuffer[i]);
        if(((i+1)%8==0 || binaryBuffer[i+1]==-1) && temp != 0){
            powTwo = 128;
            //printf("<->");
            printf(1,"%c",temp);
 4a4:	6a 01                	push   $0x1
 4a6:	e8 d5 03 00 00       	call   880 <printf>
        }
    }   
    
    char* binaryBuffer = ToBinary(T_Data,dataLength,6);
    int length = 0;
    for(int i=0;binaryBuffer[i]!=-1;i++){
 4ab:	0f be 14 1f          	movsbl (%edi,%ebx,1),%edx
        powTwo/=2;
        //printf("%d",binaryBuffer[i]);
        if(((i+1)%8==0 || binaryBuffer[i+1]==-1) && temp != 0){
            powTwo = 128;
            //printf("<->");
            printf(1,"%c",temp);
 4af:	83 c4 10             	add    $0x10,%esp
        length++;
        temp += powTwo * binaryBuffer[i];
        powTwo/=2;
        //printf("%d",binaryBuffer[i]);
        if(((i+1)%8==0 || binaryBuffer[i+1]==-1) && temp != 0){
            powTwo = 128;
 4b2:	b9 80 00 00 00       	mov    $0x80,%ecx
        }
    }   
    
    char* binaryBuffer = ToBinary(T_Data,dataLength,6);
    int length = 0;
    for(int i=0;binaryBuffer[i]!=-1;i++){
 4b7:	80 fa ff             	cmp    $0xff,%dl
 4ba:	75 bd                	jne    479 <Decode64+0x99>
            printf(1,"%c",temp);
            temp = 0;    
        }
    }
    //printf("Length %d\n",length);
    free (binaryBuffer);
 4bc:	83 ec 0c             	sub    $0xc,%esp
 4bf:	57                   	push   %edi
 4c0:	e8 5b 05 00 00       	call   a20 <free>
    printf(1,"\n");    
 4c5:	c7 45 0c d2 0b 00 00 	movl   $0xbd2,0xc(%ebp)
 4cc:	c7 45 08 01 00 00 00 	movl   $0x1,0x8(%ebp)
 4d3:	83 c4 10             	add    $0x10,%esp
}
 4d6:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4d9:	5b                   	pop    %ebx
 4da:	5e                   	pop    %esi
 4db:	5f                   	pop    %edi
 4dc:	5d                   	pop    %ebp
            temp = 0;    
        }
    }
    //printf("Length %d\n",length);
    free (binaryBuffer);
    printf(1,"\n");    
 4dd:	e9 9e 03 00 00       	jmp    880 <printf>
    free(binaryBuffer);
}
void Decode64(char* data, int lengths){
    
    char* T_Data = (char*)malloc(sizeof(char)*(lengths));
    int special=0,dataLength = 0,temp = 0,powTwo=128;
 4e2:	31 db                	xor    %ebx,%ebx
 4e4:	e9 68 ff ff ff       	jmp    451 <Decode64+0x71>
 4e9:	66 90                	xchg   %ax,%ax
 4eb:	66 90                	xchg   %ax,%ax
 4ed:	66 90                	xchg   %ax,%ax
 4ef:	90                   	nop

000004f0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	53                   	push   %ebx
 4f4:	8b 45 08             	mov    0x8(%ebp),%eax
 4f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 4fa:	89 c2                	mov    %eax,%edx
 4fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 500:	83 c1 01             	add    $0x1,%ecx
 503:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 507:	83 c2 01             	add    $0x1,%edx
 50a:	84 db                	test   %bl,%bl
 50c:	88 5a ff             	mov    %bl,-0x1(%edx)
 50f:	75 ef                	jne    500 <strcpy+0x10>
    ;
  return os;
}
 511:	5b                   	pop    %ebx
 512:	5d                   	pop    %ebp
 513:	c3                   	ret    
 514:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 51a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000520 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	56                   	push   %esi
 524:	53                   	push   %ebx
 525:	8b 55 08             	mov    0x8(%ebp),%edx
 528:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 52b:	0f b6 02             	movzbl (%edx),%eax
 52e:	0f b6 19             	movzbl (%ecx),%ebx
 531:	84 c0                	test   %al,%al
 533:	75 1e                	jne    553 <strcmp+0x33>
 535:	eb 29                	jmp    560 <strcmp+0x40>
 537:	89 f6                	mov    %esi,%esi
 539:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 540:	83 c2 01             	add    $0x1,%edx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 543:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 546:	8d 71 01             	lea    0x1(%ecx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 549:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 54d:	84 c0                	test   %al,%al
 54f:	74 0f                	je     560 <strcmp+0x40>
 551:	89 f1                	mov    %esi,%ecx
 553:	38 d8                	cmp    %bl,%al
 555:	74 e9                	je     540 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 557:	29 d8                	sub    %ebx,%eax
}
 559:	5b                   	pop    %ebx
 55a:	5e                   	pop    %esi
 55b:	5d                   	pop    %ebp
 55c:	c3                   	ret    
 55d:	8d 76 00             	lea    0x0(%esi),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 560:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 562:	29 d8                	sub    %ebx,%eax
}
 564:	5b                   	pop    %ebx
 565:	5e                   	pop    %esi
 566:	5d                   	pop    %ebp
 567:	c3                   	ret    
 568:	90                   	nop
 569:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000570 <strlen>:

uint
strlen(char *s)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 576:	80 39 00             	cmpb   $0x0,(%ecx)
 579:	74 12                	je     58d <strlen+0x1d>
 57b:	31 d2                	xor    %edx,%edx
 57d:	8d 76 00             	lea    0x0(%esi),%esi
 580:	83 c2 01             	add    $0x1,%edx
 583:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 587:	89 d0                	mov    %edx,%eax
 589:	75 f5                	jne    580 <strlen+0x10>
    ;
  return n;
}
 58b:	5d                   	pop    %ebp
 58c:	c3                   	ret    
uint
strlen(char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 58d:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 58f:	5d                   	pop    %ebp
 590:	c3                   	ret    
 591:	eb 0d                	jmp    5a0 <memset>
 593:	90                   	nop
 594:	90                   	nop
 595:	90                   	nop
 596:	90                   	nop
 597:	90                   	nop
 598:	90                   	nop
 599:	90                   	nop
 59a:	90                   	nop
 59b:	90                   	nop
 59c:	90                   	nop
 59d:	90                   	nop
 59e:	90                   	nop
 59f:	90                   	nop

000005a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	57                   	push   %edi
 5a4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 5a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 5aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 5ad:	89 d7                	mov    %edx,%edi
 5af:	fc                   	cld    
 5b0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 5b2:	89 d0                	mov    %edx,%eax
 5b4:	5f                   	pop    %edi
 5b5:	5d                   	pop    %ebp
 5b6:	c3                   	ret    
 5b7:	89 f6                	mov    %esi,%esi
 5b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000005c0 <strchr>:

char*
strchr(const char *s, char c)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	53                   	push   %ebx
 5c4:	8b 45 08             	mov    0x8(%ebp),%eax
 5c7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 5ca:	0f b6 10             	movzbl (%eax),%edx
 5cd:	84 d2                	test   %dl,%dl
 5cf:	74 1d                	je     5ee <strchr+0x2e>
    if(*s == c)
 5d1:	38 d3                	cmp    %dl,%bl
 5d3:	89 d9                	mov    %ebx,%ecx
 5d5:	75 0d                	jne    5e4 <strchr+0x24>
 5d7:	eb 17                	jmp    5f0 <strchr+0x30>
 5d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5e0:	38 ca                	cmp    %cl,%dl
 5e2:	74 0c                	je     5f0 <strchr+0x30>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 5e4:	83 c0 01             	add    $0x1,%eax
 5e7:	0f b6 10             	movzbl (%eax),%edx
 5ea:	84 d2                	test   %dl,%dl
 5ec:	75 f2                	jne    5e0 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 5ee:	31 c0                	xor    %eax,%eax
}
 5f0:	5b                   	pop    %ebx
 5f1:	5d                   	pop    %ebp
 5f2:	c3                   	ret    
 5f3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 5f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000600 <gets>:

char*
gets(char *buf, int max)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	57                   	push   %edi
 604:	56                   	push   %esi
 605:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 606:	31 f6                	xor    %esi,%esi
    cc = read(0, &c, 1);
 608:	8d 7d e7             	lea    -0x19(%ebp),%edi
  return 0;
}

char*
gets(char *buf, int max)
{
 60b:	83 ec 1c             	sub    $0x1c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 60e:	eb 29                	jmp    639 <gets+0x39>
    cc = read(0, &c, 1);
 610:	83 ec 04             	sub    $0x4,%esp
 613:	6a 01                	push   $0x1
 615:	57                   	push   %edi
 616:	6a 00                	push   $0x0
 618:	e8 2d 01 00 00       	call   74a <read>
    if(cc < 1)
 61d:	83 c4 10             	add    $0x10,%esp
 620:	85 c0                	test   %eax,%eax
 622:	7e 1d                	jle    641 <gets+0x41>
      break;
    buf[i++] = c;
 624:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 628:	8b 55 08             	mov    0x8(%ebp),%edx
 62b:	89 de                	mov    %ebx,%esi
    if(c == '\n' || c == '\r')
 62d:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 62f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 633:	74 1b                	je     650 <gets+0x50>
 635:	3c 0d                	cmp    $0xd,%al
 637:	74 17                	je     650 <gets+0x50>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 639:	8d 5e 01             	lea    0x1(%esi),%ebx
 63c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 63f:	7c cf                	jl     610 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 641:	8b 45 08             	mov    0x8(%ebp),%eax
 644:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 648:	8d 65 f4             	lea    -0xc(%ebp),%esp
 64b:	5b                   	pop    %ebx
 64c:	5e                   	pop    %esi
 64d:	5f                   	pop    %edi
 64e:	5d                   	pop    %ebp
 64f:	c3                   	ret    
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 650:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 653:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 655:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 659:	8d 65 f4             	lea    -0xc(%ebp),%esp
 65c:	5b                   	pop    %ebx
 65d:	5e                   	pop    %esi
 65e:	5f                   	pop    %edi
 65f:	5d                   	pop    %ebp
 660:	c3                   	ret    
 661:	eb 0d                	jmp    670 <stat>
 663:	90                   	nop
 664:	90                   	nop
 665:	90                   	nop
 666:	90                   	nop
 667:	90                   	nop
 668:	90                   	nop
 669:	90                   	nop
 66a:	90                   	nop
 66b:	90                   	nop
 66c:	90                   	nop
 66d:	90                   	nop
 66e:	90                   	nop
 66f:	90                   	nop

00000670 <stat>:

int
stat(char *n, struct stat *st)
{
 670:	55                   	push   %ebp
 671:	89 e5                	mov    %esp,%ebp
 673:	56                   	push   %esi
 674:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 675:	83 ec 08             	sub    $0x8,%esp
 678:	6a 00                	push   $0x0
 67a:	ff 75 08             	pushl  0x8(%ebp)
 67d:	e8 f0 00 00 00       	call   772 <open>
  if(fd < 0)
 682:	83 c4 10             	add    $0x10,%esp
 685:	85 c0                	test   %eax,%eax
 687:	78 27                	js     6b0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 689:	83 ec 08             	sub    $0x8,%esp
 68c:	ff 75 0c             	pushl  0xc(%ebp)
 68f:	89 c3                	mov    %eax,%ebx
 691:	50                   	push   %eax
 692:	e8 f3 00 00 00       	call   78a <fstat>
 697:	89 c6                	mov    %eax,%esi
  close(fd);
 699:	89 1c 24             	mov    %ebx,(%esp)
 69c:	e8 b9 00 00 00       	call   75a <close>
  return r;
 6a1:	83 c4 10             	add    $0x10,%esp
 6a4:	89 f0                	mov    %esi,%eax
}
 6a6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 6a9:	5b                   	pop    %ebx
 6aa:	5e                   	pop    %esi
 6ab:	5d                   	pop    %ebp
 6ac:	c3                   	ret    
 6ad:	8d 76 00             	lea    0x0(%esi),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 6b0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 6b5:	eb ef                	jmp    6a6 <stat+0x36>
 6b7:	89 f6                	mov    %esi,%esi
 6b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006c0 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	53                   	push   %ebx
 6c4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 6c7:	0f be 11             	movsbl (%ecx),%edx
 6ca:	8d 42 d0             	lea    -0x30(%edx),%eax
 6cd:	3c 09                	cmp    $0x9,%al
 6cf:	b8 00 00 00 00       	mov    $0x0,%eax
 6d4:	77 1f                	ja     6f5 <atoi+0x35>
 6d6:	8d 76 00             	lea    0x0(%esi),%esi
 6d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 6e0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 6e3:	83 c1 01             	add    $0x1,%ecx
 6e6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 6ea:	0f be 11             	movsbl (%ecx),%edx
 6ed:	8d 5a d0             	lea    -0x30(%edx),%ebx
 6f0:	80 fb 09             	cmp    $0x9,%bl
 6f3:	76 eb                	jbe    6e0 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
 6f5:	5b                   	pop    %ebx
 6f6:	5d                   	pop    %ebp
 6f7:	c3                   	ret    
 6f8:	90                   	nop
 6f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000700 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 700:	55                   	push   %ebp
 701:	89 e5                	mov    %esp,%ebp
 703:	56                   	push   %esi
 704:	53                   	push   %ebx
 705:	8b 5d 10             	mov    0x10(%ebp),%ebx
 708:	8b 45 08             	mov    0x8(%ebp),%eax
 70b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 70e:	85 db                	test   %ebx,%ebx
 710:	7e 14                	jle    726 <memmove+0x26>
 712:	31 d2                	xor    %edx,%edx
 714:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 718:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 71c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 71f:	83 c2 01             	add    $0x1,%edx
{
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 722:	39 da                	cmp    %ebx,%edx
 724:	75 f2                	jne    718 <memmove+0x18>
    *dst++ = *src++;
  return vdst;
}
 726:	5b                   	pop    %ebx
 727:	5e                   	pop    %esi
 728:	5d                   	pop    %ebp
 729:	c3                   	ret    

0000072a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 72a:	b8 01 00 00 00       	mov    $0x1,%eax
 72f:	cd 40                	int    $0x40
 731:	c3                   	ret    

00000732 <exit>:
SYSCALL(exit)
 732:	b8 02 00 00 00       	mov    $0x2,%eax
 737:	cd 40                	int    $0x40
 739:	c3                   	ret    

0000073a <wait>:
SYSCALL(wait)
 73a:	b8 03 00 00 00       	mov    $0x3,%eax
 73f:	cd 40                	int    $0x40
 741:	c3                   	ret    

00000742 <pipe>:
SYSCALL(pipe)
 742:	b8 04 00 00 00       	mov    $0x4,%eax
 747:	cd 40                	int    $0x40
 749:	c3                   	ret    

0000074a <read>:
SYSCALL(read)
 74a:	b8 05 00 00 00       	mov    $0x5,%eax
 74f:	cd 40                	int    $0x40
 751:	c3                   	ret    

00000752 <write>:
SYSCALL(write)
 752:	b8 10 00 00 00       	mov    $0x10,%eax
 757:	cd 40                	int    $0x40
 759:	c3                   	ret    

0000075a <close>:
SYSCALL(close)
 75a:	b8 15 00 00 00       	mov    $0x15,%eax
 75f:	cd 40                	int    $0x40
 761:	c3                   	ret    

00000762 <kill>:
SYSCALL(kill)
 762:	b8 06 00 00 00       	mov    $0x6,%eax
 767:	cd 40                	int    $0x40
 769:	c3                   	ret    

0000076a <exec>:
SYSCALL(exec)
 76a:	b8 07 00 00 00       	mov    $0x7,%eax
 76f:	cd 40                	int    $0x40
 771:	c3                   	ret    

00000772 <open>:
SYSCALL(open)
 772:	b8 0f 00 00 00       	mov    $0xf,%eax
 777:	cd 40                	int    $0x40
 779:	c3                   	ret    

0000077a <mknod>:
SYSCALL(mknod)
 77a:	b8 11 00 00 00       	mov    $0x11,%eax
 77f:	cd 40                	int    $0x40
 781:	c3                   	ret    

00000782 <unlink>:
SYSCALL(unlink)
 782:	b8 12 00 00 00       	mov    $0x12,%eax
 787:	cd 40                	int    $0x40
 789:	c3                   	ret    

0000078a <fstat>:
SYSCALL(fstat)
 78a:	b8 08 00 00 00       	mov    $0x8,%eax
 78f:	cd 40                	int    $0x40
 791:	c3                   	ret    

00000792 <link>:
SYSCALL(link)
 792:	b8 13 00 00 00       	mov    $0x13,%eax
 797:	cd 40                	int    $0x40
 799:	c3                   	ret    

0000079a <mkdir>:
SYSCALL(mkdir)
 79a:	b8 14 00 00 00       	mov    $0x14,%eax
 79f:	cd 40                	int    $0x40
 7a1:	c3                   	ret    

000007a2 <chdir>:
SYSCALL(chdir)
 7a2:	b8 09 00 00 00       	mov    $0x9,%eax
 7a7:	cd 40                	int    $0x40
 7a9:	c3                   	ret    

000007aa <dup>:
SYSCALL(dup)
 7aa:	b8 0a 00 00 00       	mov    $0xa,%eax
 7af:	cd 40                	int    $0x40
 7b1:	c3                   	ret    

000007b2 <getpid>:
SYSCALL(getpid)
 7b2:	b8 0b 00 00 00       	mov    $0xb,%eax
 7b7:	cd 40                	int    $0x40
 7b9:	c3                   	ret    

000007ba <sbrk>:
SYSCALL(sbrk)
 7ba:	b8 0c 00 00 00       	mov    $0xc,%eax
 7bf:	cd 40                	int    $0x40
 7c1:	c3                   	ret    

000007c2 <sleep>:
SYSCALL(sleep)
 7c2:	b8 0d 00 00 00       	mov    $0xd,%eax
 7c7:	cd 40                	int    $0x40
 7c9:	c3                   	ret    

000007ca <uptime>:
SYSCALL(uptime)
 7ca:	b8 0e 00 00 00       	mov    $0xe,%eax
 7cf:	cd 40                	int    $0x40
 7d1:	c3                   	ret    
 7d2:	66 90                	xchg   %ax,%ax
 7d4:	66 90                	xchg   %ax,%ax
 7d6:	66 90                	xchg   %ax,%ax
 7d8:	66 90                	xchg   %ax,%ax
 7da:	66 90                	xchg   %ax,%ax
 7dc:	66 90                	xchg   %ax,%ax
 7de:	66 90                	xchg   %ax,%ax

000007e0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 7e0:	55                   	push   %ebp
 7e1:	89 e5                	mov    %esp,%ebp
 7e3:	57                   	push   %edi
 7e4:	56                   	push   %esi
 7e5:	53                   	push   %ebx
 7e6:	89 c6                	mov    %eax,%esi
 7e8:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 7eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
 7ee:	85 db                	test   %ebx,%ebx
 7f0:	74 7e                	je     870 <printint+0x90>
 7f2:	89 d0                	mov    %edx,%eax
 7f4:	c1 e8 1f             	shr    $0x1f,%eax
 7f7:	84 c0                	test   %al,%al
 7f9:	74 75                	je     870 <printint+0x90>
    neg = 1;
    x = -xx;
 7fb:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 7fd:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 804:	f7 d8                	neg    %eax
 806:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 809:	31 ff                	xor    %edi,%edi
 80b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 80e:	89 ce                	mov    %ecx,%esi
 810:	eb 08                	jmp    81a <printint+0x3a>
 812:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 818:	89 cf                	mov    %ecx,%edi
 81a:	31 d2                	xor    %edx,%edx
 81c:	8d 4f 01             	lea    0x1(%edi),%ecx
 81f:	f7 f6                	div    %esi
 821:	0f b6 92 74 0c 00 00 	movzbl 0xc74(%edx),%edx
  }while((x /= base) != 0);
 828:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 82a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 82d:	75 e9                	jne    818 <printint+0x38>
  if(neg)
 82f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 832:	8b 75 c0             	mov    -0x40(%ebp),%esi
 835:	85 c0                	test   %eax,%eax
 837:	74 08                	je     841 <printint+0x61>
    buf[i++] = '-';
 839:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 83e:	8d 4f 02             	lea    0x2(%edi),%ecx
 841:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 845:	8d 76 00             	lea    0x0(%esi),%esi
 848:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 84b:	83 ec 04             	sub    $0x4,%esp
 84e:	83 ef 01             	sub    $0x1,%edi
 851:	6a 01                	push   $0x1
 853:	53                   	push   %ebx
 854:	56                   	push   %esi
 855:	88 45 d7             	mov    %al,-0x29(%ebp)
 858:	e8 f5 fe ff ff       	call   752 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 85d:	83 c4 10             	add    $0x10,%esp
 860:	39 df                	cmp    %ebx,%edi
 862:	75 e4                	jne    848 <printint+0x68>
    putc(fd, buf[i]);
}
 864:	8d 65 f4             	lea    -0xc(%ebp),%esp
 867:	5b                   	pop    %ebx
 868:	5e                   	pop    %esi
 869:	5f                   	pop    %edi
 86a:	5d                   	pop    %ebp
 86b:	c3                   	ret    
 86c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 870:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 872:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 879:	eb 8b                	jmp    806 <printint+0x26>
 87b:	90                   	nop
 87c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000880 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 880:	55                   	push   %ebp
 881:	89 e5                	mov    %esp,%ebp
 883:	57                   	push   %edi
 884:	56                   	push   %esi
 885:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 886:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 889:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 88c:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 88f:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 892:	89 45 d0             	mov    %eax,-0x30(%ebp)
 895:	0f b6 1e             	movzbl (%esi),%ebx
 898:	83 c6 01             	add    $0x1,%esi
 89b:	84 db                	test   %bl,%bl
 89d:	0f 84 b0 00 00 00    	je     953 <printf+0xd3>
 8a3:	31 d2                	xor    %edx,%edx
 8a5:	eb 39                	jmp    8e0 <printf+0x60>
 8a7:	89 f6                	mov    %esi,%esi
 8a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 8b0:	83 f8 25             	cmp    $0x25,%eax
 8b3:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 8b6:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 8bb:	74 18                	je     8d5 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 8bd:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 8c0:	83 ec 04             	sub    $0x4,%esp
 8c3:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 8c6:	6a 01                	push   $0x1
 8c8:	50                   	push   %eax
 8c9:	57                   	push   %edi
 8ca:	e8 83 fe ff ff       	call   752 <write>
 8cf:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 8d2:	83 c4 10             	add    $0x10,%esp
 8d5:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 8d8:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 8dc:	84 db                	test   %bl,%bl
 8de:	74 73                	je     953 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
 8e0:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 8e2:	0f be cb             	movsbl %bl,%ecx
 8e5:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 8e8:	74 c6                	je     8b0 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 8ea:	83 fa 25             	cmp    $0x25,%edx
 8ed:	75 e6                	jne    8d5 <printf+0x55>
      if(c == 'd'){
 8ef:	83 f8 64             	cmp    $0x64,%eax
 8f2:	0f 84 f8 00 00 00    	je     9f0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 8f8:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 8fe:	83 f9 70             	cmp    $0x70,%ecx
 901:	74 5d                	je     960 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 903:	83 f8 73             	cmp    $0x73,%eax
 906:	0f 84 84 00 00 00    	je     990 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 90c:	83 f8 63             	cmp    $0x63,%eax
 90f:	0f 84 ea 00 00 00    	je     9ff <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 915:	83 f8 25             	cmp    $0x25,%eax
 918:	0f 84 c2 00 00 00    	je     9e0 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 91e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 921:	83 ec 04             	sub    $0x4,%esp
 924:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 928:	6a 01                	push   $0x1
 92a:	50                   	push   %eax
 92b:	57                   	push   %edi
 92c:	e8 21 fe ff ff       	call   752 <write>
 931:	83 c4 0c             	add    $0xc,%esp
 934:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 937:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 93a:	6a 01                	push   $0x1
 93c:	50                   	push   %eax
 93d:	57                   	push   %edi
 93e:	83 c6 01             	add    $0x1,%esi
 941:	e8 0c fe ff ff       	call   752 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 946:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 94a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 94d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 94f:	84 db                	test   %bl,%bl
 951:	75 8d                	jne    8e0 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 953:	8d 65 f4             	lea    -0xc(%ebp),%esp
 956:	5b                   	pop    %ebx
 957:	5e                   	pop    %esi
 958:	5f                   	pop    %edi
 959:	5d                   	pop    %ebp
 95a:	c3                   	ret    
 95b:	90                   	nop
 95c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 960:	83 ec 0c             	sub    $0xc,%esp
 963:	b9 10 00 00 00       	mov    $0x10,%ecx
 968:	6a 00                	push   $0x0
 96a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 96d:	89 f8                	mov    %edi,%eax
 96f:	8b 13                	mov    (%ebx),%edx
 971:	e8 6a fe ff ff       	call   7e0 <printint>
        ap++;
 976:	89 d8                	mov    %ebx,%eax
 978:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 97b:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 97d:	83 c0 04             	add    $0x4,%eax
 980:	89 45 d0             	mov    %eax,-0x30(%ebp)
 983:	e9 4d ff ff ff       	jmp    8d5 <printf+0x55>
 988:	90                   	nop
 989:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 990:	8b 45 d0             	mov    -0x30(%ebp),%eax
 993:	8b 18                	mov    (%eax),%ebx
        ap++;
 995:	83 c0 04             	add    $0x4,%eax
 998:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 99b:	b8 6c 0c 00 00       	mov    $0xc6c,%eax
 9a0:	85 db                	test   %ebx,%ebx
 9a2:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 9a5:	0f b6 03             	movzbl (%ebx),%eax
 9a8:	84 c0                	test   %al,%al
 9aa:	74 23                	je     9cf <printf+0x14f>
 9ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 9b0:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 9b3:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 9b6:	83 ec 04             	sub    $0x4,%esp
 9b9:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 9bb:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 9be:	50                   	push   %eax
 9bf:	57                   	push   %edi
 9c0:	e8 8d fd ff ff       	call   752 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 9c5:	0f b6 03             	movzbl (%ebx),%eax
 9c8:	83 c4 10             	add    $0x10,%esp
 9cb:	84 c0                	test   %al,%al
 9cd:	75 e1                	jne    9b0 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 9cf:	31 d2                	xor    %edx,%edx
 9d1:	e9 ff fe ff ff       	jmp    8d5 <printf+0x55>
 9d6:	8d 76 00             	lea    0x0(%esi),%esi
 9d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 9e0:	83 ec 04             	sub    $0x4,%esp
 9e3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 9e6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 9e9:	6a 01                	push   $0x1
 9eb:	e9 4c ff ff ff       	jmp    93c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 9f0:	83 ec 0c             	sub    $0xc,%esp
 9f3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 9f8:	6a 01                	push   $0x1
 9fa:	e9 6b ff ff ff       	jmp    96a <printf+0xea>
 9ff:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 a02:	83 ec 04             	sub    $0x4,%esp
 a05:	8b 03                	mov    (%ebx),%eax
 a07:	6a 01                	push   $0x1
 a09:	88 45 e4             	mov    %al,-0x1c(%ebp)
 a0c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 a0f:	50                   	push   %eax
 a10:	57                   	push   %edi
 a11:	e8 3c fd ff ff       	call   752 <write>
 a16:	e9 5b ff ff ff       	jmp    976 <printf+0xf6>
 a1b:	66 90                	xchg   %ax,%ax
 a1d:	66 90                	xchg   %ax,%ax
 a1f:	90                   	nop

00000a20 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a20:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a21:	a1 c4 0f 00 00       	mov    0xfc4,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 a26:	89 e5                	mov    %esp,%ebp
 a28:	57                   	push   %edi
 a29:	56                   	push   %esi
 a2a:	53                   	push   %ebx
 a2b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a2e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 a30:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a33:	39 c8                	cmp    %ecx,%eax
 a35:	73 19                	jae    a50 <free+0x30>
 a37:	89 f6                	mov    %esi,%esi
 a39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 a40:	39 d1                	cmp    %edx,%ecx
 a42:	72 1c                	jb     a60 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a44:	39 d0                	cmp    %edx,%eax
 a46:	73 18                	jae    a60 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 a48:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a4a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a4c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a4e:	72 f0                	jb     a40 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a50:	39 d0                	cmp    %edx,%eax
 a52:	72 f4                	jb     a48 <free+0x28>
 a54:	39 d1                	cmp    %edx,%ecx
 a56:	73 f0                	jae    a48 <free+0x28>
 a58:	90                   	nop
 a59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 a60:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a63:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a66:	39 d7                	cmp    %edx,%edi
 a68:	74 19                	je     a83 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 a6a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 a6d:	8b 50 04             	mov    0x4(%eax),%edx
 a70:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 a73:	39 f1                	cmp    %esi,%ecx
 a75:	74 23                	je     a9a <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 a77:	89 08                	mov    %ecx,(%eax)
  freep = p;
 a79:	a3 c4 0f 00 00       	mov    %eax,0xfc4
}
 a7e:	5b                   	pop    %ebx
 a7f:	5e                   	pop    %esi
 a80:	5f                   	pop    %edi
 a81:	5d                   	pop    %ebp
 a82:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 a83:	03 72 04             	add    0x4(%edx),%esi
 a86:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a89:	8b 10                	mov    (%eax),%edx
 a8b:	8b 12                	mov    (%edx),%edx
 a8d:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a90:	8b 50 04             	mov    0x4(%eax),%edx
 a93:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 a96:	39 f1                	cmp    %esi,%ecx
 a98:	75 dd                	jne    a77 <free+0x57>
    p->s.size += bp->s.size;
 a9a:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 a9d:	a3 c4 0f 00 00       	mov    %eax,0xfc4
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 aa2:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 aa5:	8b 53 f8             	mov    -0x8(%ebx),%edx
 aa8:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 aaa:	5b                   	pop    %ebx
 aab:	5e                   	pop    %esi
 aac:	5f                   	pop    %edi
 aad:	5d                   	pop    %ebp
 aae:	c3                   	ret    
 aaf:	90                   	nop

00000ab0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 ab0:	55                   	push   %ebp
 ab1:	89 e5                	mov    %esp,%ebp
 ab3:	57                   	push   %edi
 ab4:	56                   	push   %esi
 ab5:	53                   	push   %ebx
 ab6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ab9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 abc:	8b 15 c4 0f 00 00    	mov    0xfc4,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ac2:	8d 78 07             	lea    0x7(%eax),%edi
 ac5:	c1 ef 03             	shr    $0x3,%edi
 ac8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 acb:	85 d2                	test   %edx,%edx
 acd:	0f 84 a3 00 00 00    	je     b76 <malloc+0xc6>
 ad3:	8b 02                	mov    (%edx),%eax
 ad5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 ad8:	39 cf                	cmp    %ecx,%edi
 ada:	76 74                	jbe    b50 <malloc+0xa0>
 adc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 ae2:	be 00 10 00 00       	mov    $0x1000,%esi
 ae7:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 aee:	0f 43 f7             	cmovae %edi,%esi
 af1:	ba 00 80 00 00       	mov    $0x8000,%edx
 af6:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 afc:	0f 46 da             	cmovbe %edx,%ebx
 aff:	eb 10                	jmp    b11 <malloc+0x61>
 b01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b08:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 b0a:	8b 48 04             	mov    0x4(%eax),%ecx
 b0d:	39 cf                	cmp    %ecx,%edi
 b0f:	76 3f                	jbe    b50 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 b11:	39 05 c4 0f 00 00    	cmp    %eax,0xfc4
 b17:	89 c2                	mov    %eax,%edx
 b19:	75 ed                	jne    b08 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 b1b:	83 ec 0c             	sub    $0xc,%esp
 b1e:	53                   	push   %ebx
 b1f:	e8 96 fc ff ff       	call   7ba <sbrk>
  if(p == (char*)-1)
 b24:	83 c4 10             	add    $0x10,%esp
 b27:	83 f8 ff             	cmp    $0xffffffff,%eax
 b2a:	74 1c                	je     b48 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 b2c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 b2f:	83 ec 0c             	sub    $0xc,%esp
 b32:	83 c0 08             	add    $0x8,%eax
 b35:	50                   	push   %eax
 b36:	e8 e5 fe ff ff       	call   a20 <free>
  return freep;
 b3b:	8b 15 c4 0f 00 00    	mov    0xfc4,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 b41:	83 c4 10             	add    $0x10,%esp
 b44:	85 d2                	test   %edx,%edx
 b46:	75 c0                	jne    b08 <malloc+0x58>
        return 0;
 b48:	31 c0                	xor    %eax,%eax
 b4a:	eb 1c                	jmp    b68 <malloc+0xb8>
 b4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 b50:	39 cf                	cmp    %ecx,%edi
 b52:	74 1c                	je     b70 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 b54:	29 f9                	sub    %edi,%ecx
 b56:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b59:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b5c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 b5f:	89 15 c4 0f 00 00    	mov    %edx,0xfc4
      return (void*)(p + 1);
 b65:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 b68:	8d 65 f4             	lea    -0xc(%ebp),%esp
 b6b:	5b                   	pop    %ebx
 b6c:	5e                   	pop    %esi
 b6d:	5f                   	pop    %edi
 b6e:	5d                   	pop    %ebp
 b6f:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 b70:	8b 08                	mov    (%eax),%ecx
 b72:	89 0a                	mov    %ecx,(%edx)
 b74:	eb e9                	jmp    b5f <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 b76:	c7 05 c4 0f 00 00 c8 	movl   $0xfc8,0xfc4
 b7d:	0f 00 00 
 b80:	c7 05 c8 0f 00 00 c8 	movl   $0xfc8,0xfc8
 b87:	0f 00 00 
    base.s.size = 0;
 b8a:	b8 c8 0f 00 00       	mov    $0xfc8,%eax
 b8f:	c7 05 cc 0f 00 00 00 	movl   $0x0,0xfcc
 b96:	00 00 00 
 b99:	e9 3e ff ff ff       	jmp    adc <malloc+0x2c>
