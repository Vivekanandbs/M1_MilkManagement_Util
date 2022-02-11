#include<stdio.h>
#include<stdlib.h>
#include"Milk_management.h"
struct Milkman
{
    float Milk_Quantity_Buffalo;
    float Fat_B_Milk;
    float Milk_Quantity_Cow;
    float Fat_C_Milk;
    float Cost_Of_Milk;
};
int main()
{
    int num;
    float Milk_cost;
    struct Milkman M;
    while(1)
    {
        printf("\n Enter the 1.To input data \n 2.To get quantity of milk sold \n 3.To get total cost of milk \n 4.TO exit\n");
        scanf("%d",&num);
        switch(num)
        {
            case 1:Adding_Data(&M);
            break;
            case 2:Quantity_Of_Milk(&M);
            break;
            case 3:Milk_cost=Cost_Of_Milk(&M);
            printf("Total Cost of Milk : %f",Milk_cost);
            break;
            case 4:exit(0);
            break;
            default: printf("Invalid Input\n");
        }
    }

    return 0;

}
