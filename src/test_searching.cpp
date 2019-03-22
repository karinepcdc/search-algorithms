/*!
 * \file searching.cpp
 * \brief Implementing linear and binary search (iterative version).
 * \author Karine Piacentini
 * \data March, 23th
 */

#include <iostream>  // cout, endl
#include <algorithm> // copy
#include <iterator>  // ostream_iterator, begin(), end(), distance()

#include "../includes/searching.h"


// Driver function.
int main()
{
    value_type A[] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 }; // Data container.
    value_type targets[] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 , -4, 20 }; // Target values for testing.

    // Prints out the original data container.
    std::cout << "Array: [ ";
    for( const auto & x : A )
      std::cout << x << " ";
    //std::copy( std::begin(A), std::end(A), std::ostream_iterator<value_type>( std::cout , " " ) );
    std::cout << "]\n";

    std::cout << "\n\n >>> Starting linear search..." << std::endl;
    // Executes several searchs in the data container.
    for( const auto & e : targets ) // ranged for com referencia constante
    {
        // Look for target in the entire range.
        auto result = const_cast<value_type *>( lsearch( std::begin(A), std::end(A), e ) );

        // Process the result
        if ( result != std::end(A) )
        {
            std::cout << ">>> Found \"" << e << "\" at position "
                      << std::distance(std::begin(A),result) << ".\n";
        }
        else
        {
            std::cout << ">>> Value \"" << e << "\" was not found in the array!\n";
        }
    }

    std::cout << "\n\n >>> Starting iterative binary search..." << std::endl;
    // Executes several searchs in the data container.
    for( const auto & e : targets ) // ranged for com referencia constante
    {
        // Look for target in the entire range.
        auto result = const_cast<value_type *>( bsearch_it( std::begin(A), std::end(A), e ) );

        // Process the result
        if ( result != std::end(A) )
        {
            std::cout << ">>> Found \"" << e << "\" at position "
                      << std::distance(std::begin(A),result) << ".\n";
        }
        else
        {
            std::cout << ">>> Value \"" << e << "\" was not found in the array!\n";
        }
    }

    std::cout << "\n\n >>> Starting recursive binary search..." << std::endl;
    // Executes several searchs in the data container.
    for( const auto & e : targets ) // ranged for com referencia constante
    {
        // Look for target in the entire range.
        auto result = const_cast<value_type *>( bsearch_rec( std::begin(A), std::end(A), e ) );

        // Process the result
        if ( result != std::end(A) )
        {
            std::cout << ">>> Found \"" << e << "\" at position "
                      << std::distance(std::begin(A),result) << ".\n";
        }
        else
        {
            std::cout << ">>> Value \"" << e << "\" was not found in the array!\n";
        }
    }

    std::cout << "\n\n >>> Starting iterative ternary search..." << std::endl;
    // Executes several searchs in the data container.
    for( const auto & e : targets ) // ranged for com referencia constante
    {
        // Look for target in the entire range.
        auto result = const_cast<value_type *>( tsearch_it( std::begin(A), std::end(A), e ) );

        // Process the result
        if ( result != std::end(A) )
        {
            std::cout << ">>> Found \"" << e << "\" at position "
                      << std::distance(std::begin(A),result) << ".\n";
        }
        else
        {
            std::cout << ">>> Value \"" << e << "\" was not found in the array!\n";
        }
    }

    std::cout << "\n\n >>> Starting recursive ternary search..." << std::endl;
    // Executes several searchs in the data container.
    for( const auto & e : targets ) // ranged for com referencia constante
    {
        // Look for target in the entire range.
        auto result = const_cast<value_type *>( tsearch_rec( std::begin(A), std::end(A), e ) );

        // Process the result
        if ( result != std::end(A) )
        {
            std::cout << ">>> Found \"" << e << "\" at position "
                      << std::distance(std::begin(A),result) << ".\n";
        }
        else
        {
            std::cout << ">>> Value \"" << e << "\" was not found in the array!\n";
        }
    }
    
    std::cout << "\n\n >>> Starting jump search..." << std::endl;
    // Executes several searchs in the data container.
    for( const auto & e : targets ) // ranged for com referencia constante
    {
        // Look for target in the entire range.
        auto result = const_cast<value_type *>( jumpsearch( std::begin(A), std::end(A), e ) );

        // Process the result
        if ( result != std::end(A) )
        {
            std::cout << ">>> Found \"" << e << "\" at position "
                      << std::distance(std::begin(A),result) << ".\n";
        }
        else
        {
            std::cout << ">>> Value \"" << e << "\" was not found in the array!\n";
        }
    }
  

    std::cout << "\n\n >>> Starting Fibonacci search..." << std::endl;
    // Executes several searchs in the data container.
    for( const auto & e : targets ) // ranged for com referencia constante
    {
        // Look for target in the entire range.
        auto result = const_cast<value_type *>( fibsearch( std::begin(A), std::end(A), e ) );

        // Process the result
        if ( result != std::end(A) )
        {
            std::cout << ">>> Found \"" << e << "\" at position "
                      << std::distance(std::begin(A),result) << ".\n";
        }
        else
        {
            std::cout << ">>> Value \"" << e << "\" was not found in the array!\n";
        }
    }
    
    return 0;
}
