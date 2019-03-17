#ifndef SEARCHING_H
#define SEARCHING_H

//=== Alias
using value_type = int ; //!< Simple alias to help code maintenance.

// iterative linear search
const value_type * lsearch( const value_type *, const value_type *, value_type);

// iterative binary search
const value_type * bsearch_it( const value_type *, const value_type *, value_type);

// recursive binary search main
const value_type * bsearch_rec( const value_type *, const value_type *, value_type);
 
// recursive binary search recursive part
const value_type * bsearch_recursivePart( const value_type *, const value_type *, value_type);

// iterative ternary search
const value_type * tsearch_it( const value_type *, const value_type *, value_type);

// jump search
const value_type * jumpsearch(const value_type *, const value_type *, value_type);

#endif
