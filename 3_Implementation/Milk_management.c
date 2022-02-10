/**
 * @file Milk_management.c
 * @author your name (you@domain.com)
 * @brief Calculating Milk cost
 * @version 0.1
 * @date 2022-02-10
 * 
 * @copyright Copyright (c) 2022
 * 
 */
#include<stdio.h>
#include<stdlib.h>
struct Milkman
{
    float Milk_Quantity_Buffalo;
    float Fat_B_Milk;
    float Milk_Quantity_Cow;
    float Fat_C_Milk;
    float Cost_Of_Milk;
};
/**
 * @brief Adding Milk data
 * 
 * @param M structure 
 */
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
/**
 * @brief Calculating Quantity of milk
 * 
 * @param M structure
 */
void Quantity_Of_Milk(struct Milkman *M)
{
    float Total_Quantity;
    printf("Quantity of Buffalo's Milk :%f \n",M->Milk_Quantity_Buffalo);
    printf("Quantity of Cow's Milk :%f \n",M->Milk_Quantity_Cow);
    Total_Quantity=M->Milk_Quantity_Buffalo + M->Milk_Quantity_Cow ;
    printf("Total milk sold %f \n",Total_Quantity);
}
/**
 * @brief Calculating cost of milk
 * 
 * @param M structure
 * @return float, the total cost
 */
float Cost_Of_Milk(struct Milkman *M)
{
    float Cost_Of_B_Milk = M->Fat_B_Milk * 6 * M->Milk_Quantity_Buffalo;
    float Cost_of_C_Milk = M->Fat_C_Milk * 5 * M->Milk_Quantity_Cow;
    M->Cost_Of_Milk= Cost_Of_B_Milk + Cost_of_C_Milk;
    return M->Cost_Of_Milk;
}

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
