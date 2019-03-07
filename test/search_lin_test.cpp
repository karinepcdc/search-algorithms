#include "gtest/gtest.h"
#include "../search.cpp"
#include <iterator>


TEST(SearchLinTest, EmptyRangeInput)
{
    value_type A[] = { };

    auto new_last = lsearch( std::begin(A), std::begin(A), 0 );
    EXPECT_EQ( new_last, std::begin(A) );
}

