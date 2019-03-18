#include <gtest/gtest.h>
#include "../includes/searching.h"
#include <iterator>

 TEST(SearchLinTest, normalRange) {

   value_type A[] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 }; // Data container.
   value_type targets[] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 , -4, 20 }; // Target values for testing.

  auto new_last = lsearch( std::begin(A), std::begin(A), 0 );
  EXPECT_EQ( new_last, std::begin(A) );
}

