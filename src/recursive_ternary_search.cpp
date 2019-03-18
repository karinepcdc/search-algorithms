#include <iostream>

//=== Alias
using value_type = int ; //!< Simple alias to help code maintenance.


/// Recursive part of tsearch_rec()
/*!
 * \param first Pointer to the first element in the range.
 * \param last Pointer past the last valid element in the range.
 * \param value The target value we are looking for within the range.
 * \return A pointer to the target value within the range; or last, in case the value is not in the range.
 */
const value_type * tsearch_recursivePart( const value_type *first, const value_type *last, value_type value )
{
  const value_type *t1 = NULL; // pointer to last value of first tird of the array
  const value_type *t2 = NULL; // pointer to last value of seccond tird of the array

  if(last <= first){ //
    return NULL; // value not found
  } else {

    t1 = first + (last - first)/3;
    t2 = last - (last - first)/3 -1;
    //std::cout << "after:  t1= " << *t1 << " t2= " << *t2 << "\n";
 
    if(value == *t1){ // value found!

      return t1;
    } else if(value == *t2){

      return t2;
    } else if(value < *t1){

      return tsearch_recursivePart(first, t1, value);
    } else if(value < *t2){
      
      return tsearch_recursivePart(t1 + 1, t2, value);
    } else{
      return tsearch_recursivePart(t2 + 1, last, value);
    }
    //std::cout << "first " << *first << " last " << *last << std::endl;

  }

}


/// Implements an recursive ternary search on an array of integers calling tsearch_recursivePar. 
/*! 
 * \param first Pointer to the first element in the range.
 * \param last Pointer past the last valid element in the range.
 * \param value The target value we are looking for within the range 
 * \return A pointer to the target value withing the range; or last, in case the value is not in the range.
 * 
 * Implementation splited in order to return last pointer 
 */
const value_type * tsearch_rec(const value_type *first, const value_type *last, value_type value){

  const value_type *search_ret = tsearch_recursivePart(first, last, value);
  if(search_ret == NULL){
    return last;
  } else {
    return search_ret;
  }

}

