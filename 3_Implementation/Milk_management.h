/**
 * @file Milk_management.h
 * @author your name (you@domain.com)
 * @brief calculating the milk cost and quantity
 * @version 0.1
 * @date 2022-02-11
 * 
 * @copyright Copyright (c) 2022
 * 
 */
#ifdef Milk_manage_M
#define Milk_manage_M

#include<stdio.h>

struct Milkman
{
    float Milk_Quantity_Buffalo;
    float Fat_B_Milk;
    float Milk_Quantity_Cow;
    float Fat_C_Milk;
    float Cost_Of_Milk;
};
/**
 * @brief Adding data 
 * 
 * @param M structure
 */

void Adding_Data(struct Milkman *M);
/**
 * @brief calculating quantity of milk
 * 
 * @param M structure
 */
void Quantity_Of_Milk(struct Milkman *M);
/**
 * @brief calculating cost of milk
 * 
 * @param M structure 
 * @return float, returns the cost of the milk 
 */
float Cost_Of_Milk(struct Milkman *M);

#endif