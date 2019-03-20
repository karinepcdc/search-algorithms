#ifndef JUMP_SEARCH_H
#define JUMP_SEARCH_H

#include <iostream> // NULL; std::cout;
#include <cmath> // sqrt()

//=== Alias
using value_type = long int ; //!< Simple alias to help code maintenance.

// iterative linear search
const value_type * lsearch( const value_type *, const value_type *, value_type );

#endif
