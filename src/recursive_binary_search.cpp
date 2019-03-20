#include <iostream> // NULL; std::cout;

//=== Alias
using value_type = long int ; //!< Simple alias to help code maintenance.

/// Recursive part of bsearch_rec()
/*! 
 * \param first Pointer to the first element in the range.
 * \param last Pointer past the last valid element in the range.
 * \param value The target value we are looking for within the range 
 * \return A pointer to the target value withing the range; or last, in case the value is not in the range. 
 */
const value_type * bsearch_recursivePart(const value_type *first, const value_type *last, value_type value){

  const value_type *mid = NULL;


  if(last <= first){
    return NULL; // value not found
  } else {

    mid = first + (last - first)/2;
    //std::cout << "first " << *first << " last " << *last << " mid first: " << *mid << std::endl;

    if(value == *mid){ // value found!
      return mid;
    } else if(value < *mid){
      return bsearch_recursivePart(first, mid, value);
    } else{
      return bsearch_recursivePart(mid + 1, last, value);
    }
      
  }

}

/// Implements an recursive binary search on an array of integers calling bsearch_recursivePar. 
/*! 
 * \param first Pointer to the first element in the range.
 * \param last Pointer past the last valid element in the range.
 * \param value The target value we are looking for within the range 
 * \return A pointer to the target value withing the range; or last, in case the value is not in the range.
 * 
 * Implementation splited in order to return last pointer 
 */
const value_type * bsearch_rec(const value_type *first, const value_type *last, value_type value){

  const value_type *search_ret = bsearch_recursivePart(first, last, value);
  if(search_ret == NULL){
    return last;
  } else {
    return search_ret;
  }

}

