#include <iostream>

//=== Alias
using value_type = long int ; //!< Simple alias to help code maintenance.


/// Implements a Fibonacci search on an array of integers.
/*! 
 * \param first Pointer to the first element in the range.
 * \param last Pointer past the last valid element in the range.
 * \param value The target value we are looking for within the range 
 * \return A pointer to the target value withing the range; or last, in case the value is not in the range. 
 */

// return 
long int *Fib(int n){

  long int *Fib_n = new Fib[n];

  Fib[0]=1;
  Fib[1]=1;

  for(i=2; i<n; i++){
    Fib[i] = Fib[n-1] + Fib[n-2];
  }

  return Fib;
  
}


const value_type * fibsearch(const value_type *first, const value_type *last, value_type value){




}
