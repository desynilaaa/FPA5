#include "types.h"
#include "stat.h"
#include "user.h"
char *envp[] = environ;
int main(int argc, char *argv[]){
	//char *envData;
	int i = 0;
    for(i=0;envp[i]>0;i++){
    	//envData = envp[i];
        printf(1,"%s\n",envp[i]);
    }
    //printf(1,"Avaiable env %d\n",i);
    return 0;
}
