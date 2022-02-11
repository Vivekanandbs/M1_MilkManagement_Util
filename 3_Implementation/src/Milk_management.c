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

void Adding_Data(struct Milkman *M)
{
    int choice;
    printf("enter 1.for Buffalo's milk \n 2.for cow's milk \n");
    scanf("%d",&choice);
    if(choice==1)
    {
        printf("Enter Quantity of milk \n ");
        scanf("%f",&M->Milk_Quantity_Buffalo);
        printf("Enter value of fat \n ");
        scanf("%f",&M->Fat_B_Milk);
    }
    else if(choice==2)
    {
        printf("Enter Quantity of milk \n ");
        scanf("%f",&M->Milk_Quantity_Cow);
        printf("Enter value of fat \n ");
        scanf("%f",&M->Fat_C_Milk);
    }
    else
    printf("Invalid Input");
}

void Quantity_Of_Milk(struct Milkman *M)
{
    float Total_Quantity;
    printf("Quantity of Buffalo's Milk :%f \n",M->Milk_Quantity_Buffalo);
    printf("Quantity of Cow's Milk :%f \n",M->Milk_Quantity_Cow);
    Total_Quantity=M->Milk_Quantity_Buffalo + M->Milk_Quantity_Cow ;
    printf("Total milk sold %f \n",Total_Quantity);
}

float Cost_Of_Milk(struct Milkman *M)
{
    float Cost_Of_B_Milk = M->Fat_B_Milk * 6 * M->Milk_Quantity_Buffalo;
    float Cost_of_C_Milk = M->Fat_C_Milk * 5 * M->Milk_Quantity_Cow;
    M->Cost_Of_Milk= Cost_Of_B_Milk + Cost_of_C_Milk;
    return M->Cost_Of_Milk;;
}

