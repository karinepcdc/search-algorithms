
#include <iostream>  // cout, endl
#include <algorithm> // copy
#include <iterator>  // ostream_iterator, begin(), end(), distance()

#include "../includes/searching.h"


// Driver function.
int main()
{
    value_type A[] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 }; // Data container 1.
    value_type B[] = { 0, 1, 2, 3, 4, 6, 7, 8, 9 }; // Data container 2.
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
    
    // empty array
    {
      auto result = const_cast<value_type *>( lsearch( std::begin(A), std::begin(A), 0 ) );

      // Process the result
      if ( result != std::begin(A) )
	{
	  std::cout << ">>> Found \"" << 0 << "\" at position "
		    << std::distance(std::begin(A),result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 0 << "\" was not found in the array!\n";
	}
    }

    // size 1 array
    {
      auto result = const_cast<value_type *>( lsearch( std::begin(A), &A[1], 0 ) );

      // Process the result
      if ( result != &A[1] )
	{
	  std::cout << ">>> Found \"" << 0 << "\" at position "
		    << std::distance(std::begin(A), result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 0 << "\" was not found in the array!\n";
	}
    }

    // midle term missing
    {
      auto result = const_cast<value_type *>( lsearch( std::begin(B), std::end(B), 5 ) );

      // Process the result
      if ( result != std::end(B) )
	{
	  std::cout << ">>> Found \"" << 5 << "\" at position "
		    << std::distance(std::begin(B), result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 5 << "\" was not found in the array!\n";
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

    // empty array
    {
      auto result = const_cast<value_type *>( bsearch_it( std::begin(A), std::begin(A), 0 ) );

      // Process the result
      if ( result != std::begin(A) )
	{
	  std::cout << ">>> Found \"" << 0 << "\" at position "
		    << std::distance(std::begin(A),result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 0 << "\" was not found in the array!\n";
	}
    }

    // size 1 array
    {
      auto result = const_cast<value_type *>( bsearch_it( std::begin(A), &A[1], 0 ) );

      // Process the result
      if ( result != &A[1] )
	{
	  std::cout << ">>> Found \"" << 0 << "\" at position "
		    << std::distance(std::begin(A), result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 0 << "\" was not found in the array!\n";
	}
    }

    // midle term missing
    {
      auto result = const_cast<value_type *>( bsearch_it( std::begin(B), std::end(B), 5 ) );

      // Process the result
      if ( result != std::end(B) )
	{
	  std::cout << ">>> Found \"" << 5 << "\" at position "
		    << std::distance(std::begin(B), result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 5 << "\" was not found in the array!\n";
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

    // empty array
    {
      auto result = const_cast<value_type *>( bsearch_rec( std::begin(A), std::begin(A), 0 ) );

      // Process the result
      if ( result != std::begin(A) )
	{
	  std::cout << ">>> Found \"" << 0 << "\" at position "
		    << std::distance(std::begin(A),result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 0 << "\" was not found in the array!\n";
	}
    }

    // size 1 array
    {
      auto result = const_cast<value_type *>( bsearch_rec( std::begin(A), &A[1], 0 ) );

      // Process the result
      if ( result != &A[1] )
	{
	  std::cout << ">>> Found \"" << 0 << "\" at position "
		    << std::distance(std::begin(A), result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 0 << "\" was not found in the array!\n";
	}
    }

    // midle term missing
    {
      auto result = const_cast<value_type *>( bsearch_rec( std::begin(B), std::end(B), 5 ) );

      // Process the result
      if ( result != std::end(B) )
	{
	  std::cout << ">>> Found \"" << 5 << "\" at position "
		    << std::distance(std::begin(B), result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 5 << "\" was not found in the array!\n";
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

    // empty array
    {
      auto result = const_cast<value_type *>( tsearch_it( std::begin(A), std::begin(A), 0 ) );

      // Process the result
      if ( result != std::begin(A) )
	{
	  std::cout << ">>> Found \"" << 0 << "\" at position "
		    << std::distance(std::begin(A),result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 0 << "\" was not found in the array!\n";
	}
    }

    // size 1 array
    {
      auto result = const_cast<value_type *>( tsearch_it( std::begin(A), &A[1], 0 ) );

      // Process the result
      if ( result != &A[1] )
	{
	  std::cout << ">>> Found \"" << 0 << "\" at position "
		    << std::distance(std::begin(A), result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 0 << "\" was not found in the array!\n";
	}
    }

    // midle term missing
    {
      auto result = const_cast<value_type *>( tsearch_it( std::begin(B), std::end(B), 5 ) );

      // Process the result
      if ( result != std::end(B) )
	{
	  std::cout << ">>> Found \"" << 5 << "\" at position "
		    << std::distance(std::begin(B), result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 5 << "\" was not found in the array!\n";
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

    // empty array
    {
      auto result = const_cast<value_type *>( tsearch_rec( std::begin(A), std::begin(A), 0 ) );

      // Process the result
      if ( result != std::begin(A) )
	{
	  std::cout << ">>> Found \"" << 0 << "\" at position "
		    << std::distance(std::begin(A),result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 0 << "\" was not found in the array!\n";
	}
    }

    // size 1 array
    {
      auto result = const_cast<value_type *>( tsearch_rec( std::begin(A), &A[1], 0 ) );

      // Process the result
      if ( result != &A[1] )
	{
	  std::cout << ">>> Found \"" << 0 << "\" at position "
		    << std::distance(std::begin(A), result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 0 << "\" was not found in the array!\n";
	}
    }

    // midle term missing
    {
      auto result = const_cast<value_type *>( tsearch_rec( std::begin(B), std::end(B), 5 ) );

      // Process the result
      if ( result != std::end(B) )
	{
	  std::cout << ">>> Found \"" << 5 << "\" at position "
		    << std::distance(std::begin(B), result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 5 << "\" was not found in the array!\n";
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
  
    // empty array
    {
      auto result = const_cast<value_type *>( jumpsearch( std::begin(A), std::begin(A), 0 ) );

      // Process the result
      if ( result != std::begin(A) )
	{
	  std::cout << ">>> Found \"" << 0 << "\" at position "
		    << std::distance(std::begin(A),result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 0 << "\" was not found in the array!\n";
	}
    }

    // size 1 array
    {
      auto result = const_cast<value_type *>( jumpsearch( std::begin(A), &A[1], 0 ) );

      // Process the result
      if ( result != &A[1] )
	{
	  std::cout << ">>> Found \"" << 0 << "\" at position "
		    << std::distance(std::begin(A), result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 0 << "\" was not found in the array!\n";
	}
    }

    // midle term missing
    {
      auto result = const_cast<value_type *>( jumpsearch( std::begin(B), std::end(B), 5 ) );

      // Process the result
      if ( result != std::end(B) )
	{
	  std::cout << ">>> Found \"" << 5 << "\" at position "
		    << std::distance(std::begin(B), result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 5 << "\" was not found in the array!\n";
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

    // empty array
    std::cout << "\n\n >>> Fibonacci search in an empty array..." << std::endl;
    {
      auto result = const_cast<value_type *>( fibsearch( std::begin(A), std::begin(A), 0 ) );

      // Process the result
      if ( result != std::begin(A) )
	{
	  std::cout << ">>> Found \"" << 0 << "\" at position "
		    << std::distance(std::begin(A),result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 0 << "\" was not found in the array!\n";
	}
    }

    // size 1 array
    std::cout << "\n\n >>> Fibonacci search in an singleton..." << std::endl;
    {
      auto result = const_cast<value_type *>( fibsearch( std::begin(A), &A[1], 0 ) );

      // Process the result
      if ( result != &A[1] )
	{
	  std::cout << ">>> Found \"" << 0 << "\" at position "
		    << std::distance(std::begin(A), result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 0 << "\" was not found in the array!\n";
	}
    }

    // midle term missing
    std::cout << "\n\n >>> Fibonacci search in an array with holes..." << std::endl;
    {
      auto result = const_cast<value_type *>( fibsearch( std::begin(B), std::end(B), 5 ) );

      // Process the result
      if ( result != std::end(B) )
	{
	  std::cout << ">>> Found \"" << 5 << "\" at position "
		    << std::distance(std::begin(B), result) << ".\n";
	}
      else
	{
	  std::cout << ">>> Value \"" << 5 << "\" was not found in the array!\n";
	}
    }

    
    return 0;
}
