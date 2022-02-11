#include "unity.h"
#include "Milk_management.h"
struct Milkman
{
    float Milk_Quantity_Buffalo;
    float Fat_B_Milk;
    float Milk_Quantity_Cow;
    float Fat_C_Milk;
    float Cost_Of_Milk;
};
void setUp()
{
}

void tearDown()
{
}

void test_Cost_Of_Milk()
{
    struct Milkman M={10,7,15,4.5};
    TEST_ASSERT_EQUAL(757,Cost_Of_Milk(&M));
}

int test_main()
{
    UNITY_BEGIN();

    RUN_TEST(test_Cost_Of_Milk);

    return UNITY_END();
}