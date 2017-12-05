#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

void Encode64(char* data,int lengths);
void Decode64(char* data, int lengths);
char* ToBinary(char* data, int dataLength, int limits);
char* base64_T ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
int main(int argc, char *argv[]){
    int i, dataLength=0;
    char* bufferInput;
    if(argv[2][0]!='\"'){
        printf(1,"Invalid Syntax detected!\nSyntax base64 [--encode/--decode] \"[string to operate]\"\n");
        exit();
    }
    for(i=2;i<(argc);i++){
        dataLength+= strlen(argv[i])+1;
    }
    dataLength--;
    bufferInput = (char*)malloc(sizeof(char)*(dataLength+argc));
    int points=0;
    for(i=2;i<(argc);i++){
        //sprintf(bufferInput+strlen(bufferInput),"%s",argv[i]);
        int j;
        int tempLength = strlen(argv[i]);
        if(i==2){
            j=1;
        }else{
            j=0;
        }

        for(;j<tempLength;j++){
            bufferInput[points]=argv[i][j];
            points++;
            /*
            if(argv[i][j]=='\\'){
                j++;
            }
            */
        }
        if(i<(argc-1)){
            bufferInput[points]=' ';
            points++;
        }else{
            points--;
            bufferInput[points]='\0';
        }
    }
    //printf(1,"%d %d\n %s\n",points,dataLength,bufferInput);
    //printf(1,"%d %s\n",dataLength,bufferInput);
    if(strcmp(argv[1],"--encode")==0){
        Encode64(bufferInput,points);
    }else if(strcmp(argv[1],"--decode")==0){
        Decode64(bufferInput,points);
    }else{
        printf(1,"No Valid Command Was Found!\n");
    }
    //printf(1,"Done Base64 of %s\n",argv[2]);
    /*
    Encode64("Mary had");
    Decode64("TWFyeSBoYWQ=");
    Encode64("Mary had a little lamb... @JKLMNOPZ[\\]^_`ajklmnoz}~");
    Decode64("TWFyeSBoYWQgYSBsaXR0bGUgbGFtYi4uLiBASktMTU5PUFpbXF1eX2BhamtsbW5ven1+");
    Encode64("(/..../../.%...%..%/_..... $.<(+|&!£*);¬-/¦,%_>?:'=");
    Decode64("KC8uLi4uLy4uLy4lLi4uJS4uJS9fLi4uLi4gJC48KCt8JiGjKik7rC0vpiwlXz4/Oic9");
    Encode64("");
    Encode64("f");
    Encode64("fo");
    Encode64("foo");
    Encode64("foob");
    Encode64("fooba");
    Encode64("foobar");
    Encode64("Callas, J., Donnerhacke, L., Finney, H., and R. Thayer,");
    Decode64("Q2FsbGFzLCBKLiwgRG9ubmVyaGFja2UsIEwuLCBGaW5uZXksIEguLCBhbmQgUi4gVGhheWVyLA==");
    */
    free(bufferInput);
    exit();
}
void Encode64(char* data, int lengths){
    char* binaryBuffer = ToBinary(data,lengths,8);
    //printf(1,"%d %s\n",strlen(data),data);
    int temp = 0,powTwo=32,length=0,i;
    for(i=0;binaryBuffer[i]!=-1;i++){
        length++;
        temp += powTwo * binaryBuffer[i];
        powTwo/=2;
        //printf(1,"%d",binaryBuffer[i]);        
        if((i+1)%6==0 || binaryBuffer[i+1]==-1){
            powTwo = 32;
            //printf(1,"<->");
            printf(1,"%c",base64_T[temp]);
            temp = 0;    
        }
    }
    //printf("%d",length%6);
    for(int i=(6 - length%6)/2;i>0 && i<3;i--){
        printf(1,"=");
    }
    printf(1,"\n");
    free(binaryBuffer);
}
void Decode64(char* data, int lengths){
    
    char* T_Data = (char*)malloc(sizeof(char)*(lengths));
    int special=0,dataLength = 0,temp = 0,powTwo=128;
    for(int i=0;data[i]!='\0';i++){
        if(data[i]=='='){
            special++;
        }else{
            int offset = 53;
            if(data[i] >= 'a'){
                offset = 26 + data[i]-'a';
            }else if(data[i] >= 'A'){
                offset = 0 + data[i]-'A';
            }else{
                if(data[i]=='+'){
                    offset = 62; 
                }else if(data[i] =='/'){
                    offset = 63;
                }else{
                    offset += data[i] - '1';
                }
            }
            //printf("Offset %d char : %c result %c\n",offset,data[i],base64_T[offset]);
            T_Data[dataLength] = offset;
            dataLength++;
        }
    }   
    
    char* binaryBuffer = ToBinary(T_Data,dataLength,6);
    int length = 0;
    for(int i=0;binaryBuffer[i]!=-1;i++){
        length++;
        temp += powTwo * binaryBuffer[i];
        powTwo/=2;
        //printf("%d",binaryBuffer[i]);
        if(((i+1)%8==0 || binaryBuffer[i+1]==-1) && temp != 0){
            powTwo = 128;
            //printf("<->");
            printf(1,"%c",temp);
            temp = 0;    
        }
    }
    //printf("Length %d\n",length);
    free (binaryBuffer);
    printf(1,"\n");    
}
char* ToBinary(char* data,int dataLength, int limits){
    char* tempBinaryBuffer = (char*)malloc(sizeof(char)*(dataLength+1)*(limits));
    int bufferLength = 0,i,temp;
    for(i=0,temp=data[i],i++;i<=dataLength;temp = data[i],i++){
        //printf(1,"Decoding : %c with i %d length %d\n",temp,i,dataLength);
        char tempBuffer[100];
        int tempLoc = 0,calc,j;
        /*
        do {
            calc = temp%2;
            tempBuffer[tempLoc] = calc;
            tempLoc++;
        } while (temp=temp/2);
        */
        while(1){
            calc = temp%2;
            tempBuffer[tempLoc] = calc;
            tempLoc++;
            if(!(temp = temp/2)){
                calc = temp%2;
                tempBuffer[tempLoc] = calc;
                tempLoc++;
                break;
            }
        }
        while(tempLoc<limits){
            tempBuffer[tempLoc++] = 0;
        }

        for(j=limits-1;j>=0;j--){
            tempBinaryBuffer[bufferLength] = tempBuffer[j];
            //printf(1,"%d",tempBuffer[j]);
            bufferLength++;
        }
        //printf(1,"\n");
    }
    
    tempBinaryBuffer[bufferLength] = -1;
    //printf(1,"Buffer Length %d\n",bufferLength);
    return tempBinaryBuffer;
}
