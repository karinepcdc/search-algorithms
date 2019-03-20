#include <iostream>

//=== Alias
using value_type = long int ; //!< Simple alias to help code maintenance.


/// Implements an interative ternary search on an array of integers.
/*!
 * \param first Pointer to the first element in the range.
 * \param last Pointer past the last valid element in the range.
 * \param value The target value we are looking for within the range.
 * \return A pointer to the target value within the range; or last, in case the value is not in the range.
 */
const value_type * tsearch_it( const value_type *first, const value_type *last, value_type value )
{
  const value_type *t1 = NULL; // pointer to last value of first tird of the array
  const value_type *t2 = NULL; // pointer to last value of seccond tird of the array
  const value_type *last_i = last;  // keep last value 
  
  while(last > first && first < last_i){
    t1 = first + (last - first)/3;
    t2 = last - (last - first)/3 -1;
    //std::cout << "after:  t1= " << *t1 << " t2= " << *t2 << "\n";
 
    if(value == *t1){
      return t1;
    } else if(value == *t2){
      return t2;
    } else if(value < *t1){
      last = t1;      
    } else if(value < *t2){
      first = t1 + 1;
      last = t2;
    } else{
      first = t2 + 1;
    }
    //std::cout << "first " << *first << " last " << *last << std::endl;

  }

  return last_i; 
}
