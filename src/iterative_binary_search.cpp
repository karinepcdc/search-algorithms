#include <iostream>

//=== Alias
using value_type = long int ; //!< Simple alias to help code maintenance.


/// Implements an interative binary search on an array of integers.
/*!
 * \param first Pointer to the first element in the range.
 * \param last Pointer past the last valid element in the range.
 * \param value The target value we are looking for within the range.
 * \return A pointer to the target value within the range; or last, in case the value is not in the range.
 */
const value_type * bsearch_it( const value_type *first, const value_type *last, value_type value )
{
  const value_type *mid= NULL; // pointer to current value being analyzed
  const value_type *last_i = last;  // keep last value 
  
  while(last > first && first < last_i){
    mid = first + (last - first)/2;
    //std::cout << " mid after: " << *mid << std::endl;
 
    if(*mid == value){  // value found!
      return mid;
    } else if(*mid < value){
      first = mid + 1;      
    } else{
      last = mid;
    }
    //std::cout << "first " << *first << " last " << *last << " mid first: " << *mid << std::endl;

  }

  return last_i; // value not found
}
