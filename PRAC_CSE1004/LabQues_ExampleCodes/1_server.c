#include<stdio.h>                                
#include<sys/types.h>
#include<netinet/in.h>
#include<string.h>
#include<stdlib.h>

struct w_mea{
    int num;
    char wor[100];
    char mean[200];
}s[10];

main(){
//    struct w_mea s[10];
    // s[0].num=0;
    strcpy(s[0].wor,"Cavalier");
    strcpy(s[0].mean,"Showing lack of concern or seriousness.");

    strcpy(s[1].wor,"Petrichor");
    strcpy(s[1].mean,"The pleasant earthly smell after rain.");
    strcpy(s[2].wor,"Euphoria");
    strcpy(s[2].mean,"A feeling of intense happiness & excitement.");
    strcpy(s[3].wor,"Rhetoric");
    strcpy(s[3].mean,"The art of effective speaking.");
    strcpy(s[4].wor,"Accord");
    strcpy(s[4].mean,"Concurrence of opinion.");
    strcpy(s[5].wor,"Grapple");
    strcpy(s[5].mean,"Work hard to come to terms with or deal with something.");
    strcpy(s[6].wor,"Peremptory");
    strcpy(s[6].mean,"Not allowing contradiction or refusal.");
    strcpy(s[7].wor,"Rudiment");
    strcpy(s[7].mean,"The elementary stage of any subject.");
    strcpy(s[8].wor,"Sate");
    strcpy(s[8].mean,"Fill to contentment.");
    strcpy(s[9].wor,"Expiate");
    strcpy(s[9].mean,"Make amends for.");


    int sd,sd2,nsd,clilen,sport,len;

    char word[100];
    char sendmsg[200],rcvmsg[100];
    struct  sockaddr_in servaddr,cliaddr;
    printf("Enter the server port:\n");
    scanf("%d",&sport);
    printf("%d",sport);
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
        printf(" Binded \n");
    listen(sd,5);
    clilen=sizeof(cliaddr);
    nsd=accept(sd,(struct  sockaddr *)&cliaddr,&clilen);
    if(nsd<0)
        printf("Can't accept\n");
    else
        printf("Accepted\n");
    
    recv(nsd,word,100,0);
    printf("Wrord Received : %s\n\n",word);

    printf("Searching meaning in Dictionary ...........\n");
    int flag=0;
    for(int i=0;i<10;i++)
    {
        if(strcmp(word,s[i].wor)==0)
        {
            // printf("%s\n",s[i].mean);
            strcpy(sendmsg,s[i].mean);
            flag=1;
            break;
        }
    }
    if(flag== 0 )
    {   
        strcpy(sendmsg,"Meaning not found");
    }
    send(nsd,sendmsg,200,0);
}















