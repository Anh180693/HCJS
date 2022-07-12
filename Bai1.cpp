#include<stdio.h>

int main(){
	int n;
	do{
		printf("Nhap vao so nguyen co 3 chu so : ");
		scanf("%d",&n);
		
		if(n<100 || n>1000){
			printf("Nhap lai : ");
			scanf("%d",&n);
		}
	}
	while(n<100 || n>1000);
		
	int k;
	while(n!=0){
		k=n%10;
		n=n/10;
		
	switch(k){
		case 1:
			printf("Mot");
			break;
			case 2:
				printf("Hai");
				break;
				case 3:
					printf("Ba");
					break;
					case 4:
						printf("Bon");
						break;
						case 5:
							printf("Nam");
							break;
							case 6:
								printf("Sau");
								break;
								case 7:
									printf("Bay");
									break;
									case 8:
										printf("Tam");
										break;
										case 9:
											printf("Chin");
											break;
											case 0:
												printf("Khong");
												break;
											}
	}
}
