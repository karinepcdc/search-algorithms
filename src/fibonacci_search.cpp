#include <iostream>
#include <vector>

//=== Alias
using value_type = long int ; //!< Simple alias to help code maintenance.


/// Implements a Fibonacci search on an array of integers.
/*! 
 * \param first Pointer to the first element in the range.
 * \param last Pointer past the last valid element in the range.
 * \param value The target value we are looking for within the range 
 * \return A pointer to the target value withing the range; or last, in case the value is not in the range. 
 */

const value_type * fibsearch(const value_type *first, const value_type *last, value_type value){
  const value_type *last_i = last; // keep initial last 
  int i;          // iterator
  const long int *fib1; // pointer to bigest element on left partition size; value of Fib[i_fib1];
  int i_fib1;     // fib1 index
  int size = last - first;
  std::vector<long int> Fib{0,1,1}; // Fib[0]=0, Fib[1]=1, Fib[2]=1;

  i=2;
  while(Fib[i] < size){
    i++;
    Fib.push_back(Fib[i-1] + Fib[i-2]);
  }
  i_fib1 = i - 2;

  if(i_fib1 == 0)
    i_fib1++;
    
  while(first < last){
    fib1 = first + Fib[i_fib1] -1;
    
    if(value == *fib1){
      return fib1;
    } else if(value < *fib1){ // partition left part following fibonacci search standards
      last = fib1;
      i_fib1 -= 2;       // define left most partion size
      if(i_fib1 < 0){
	i_fib1 = 1;
      }
    } else { // partition right part following fibonacci search standards
      first = fib1 + 1;
      
      i_fib1 -= 1; // define left most partion size; fib2 index -2 = fib1 index - 1
      if(i_fib1 < 0){
	i_fib1 = 1;
      }
    }


  }
  
  return last_i;
}
