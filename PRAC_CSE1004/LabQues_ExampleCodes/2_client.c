#include<stdio.h>
#include<sys/types.h>
#include<netinet/in.h>
#include<string.h>

main(){
    int csd,cport,len;
    char sendmsg[100],revmsg[100];
    struct  sockaddr_in  servaddr;
    printf("Enter the port \n");
    scanf("%d",&cport);
    printf("%d\n",cport);
    csd=socket(AF_INET,SOCK_STREAM,0);
    if(csd<0)
        printf("Can't create\n");
    else
        printf("Socket is created\n");
    servaddr.sin_family=AF_INET;
    servaddr.sin_addr.s_addr=htonl(INADDR_ANY);
    servaddr.sin_port=htons(cport);
    
    if(connect(csd,(struct sockaddr *)&servaddr,sizeof(servaddr))<0)
        printf("Can't  connect\n");
    else
        printf("Connected sucessfully\n");
    char aa[5];
    char bb[5];
    int a;
    printf("Enter the value of n: ");
    scanf("%d",&n);
    sprintf(aa,"%d",n);
    send(csd,aa,5,0);
    send(csd,bb,5,0);
    recv(csd,revmsg,100,0);
    printf("The answer received from the server side is: %s\n",revmsg);
}
