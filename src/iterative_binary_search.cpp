#include <iostream>

//=== Alias
using value_type = int ; //!< Simple alias to help code maintenance.


/// Implements an interative binary search on an array of integers.
/*!
 * \param first Pointer to the first element in the range.
 * \param last Pointer past the last valid element in the range.
 * \param value The target value we are looking for within the range.
 * \return A pointer to the target value within the range; or last, in case the value is not in the range.
 */
const value_type * bsearch( const value_type *first, const value_type *last, value_type value )
{
  const value_type *current= first;
  const value_type *last_i = last;
  
  while(last >= first && first < last_i){
    current = first + (last - first)/2;
    //std::cout << " current after: " << *current << std::endl;
 
    if(*current == value){
      return current;
    } else if(*current < value){
      first = current + 1;      
    } else{
      last = current - 1;
    }
    //std::cout << "first " << *first << " last " << *last << " current first: " << *current << std::endl;

  }

  return last_i; // STUB
}
