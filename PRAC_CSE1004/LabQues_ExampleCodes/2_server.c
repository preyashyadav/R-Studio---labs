#include<stdio.h>                                
#include<sys/types.h>
#include<netinet/in.h>
#include<string.h>
#include<stdlib.h>
#include<string.h>

void main(){
    int sd,sd2,nsd,clilen,sport,len;

    char n[5];
    char result[5];
    char sendmsg[100],rcvmsg[100];
    struct  sockaddr_in servaddr,cliaddr;
    printf("Enter the server port:\n");
    scanf("%d",&sport);
    printf("Connected to port %d\n",sport);
    sd=socket(AF_INET,SOCK_STREAM,0);
    if(sd<0)
        printf("Can't create \n");
    else
        printf("Socket is created\n");
    servaddr.sin_family=AF_INET;
    servaddr.sin_addr.s_addr=htonl(INADDR_ANY);
    servaddr.sin_port=htons(sport);

    sd2=bind(sd,(struct  sockaddr*) &servaddr,sizeof(servaddr));
    if(sd2<0)
        printf("Can't bind\n");
    else
        printf("Binded \n");
    listen(sd,5);
    clilen=sizeof(cliaddr);
    nsd=accept(sd,(struct  sockaddr *)&cliaddr,&clilen);
    if(nsd<0)
        printf("Can't accept\n");
    else
        printf("Accepted\n");
    recv(nsd,n,5,0);
    recv(nsd,result,5,0);
    int x=atoi(n);
    int z=0;
    printf("Data Received\n");
    printf("Performing the operation.....\n");
    z=n*(n+1);
    printf("Result sent : %d\n",z);
    sprintf(sendmsg,"%d",z);
    send(nsd,sendmsg,100,0);
}















