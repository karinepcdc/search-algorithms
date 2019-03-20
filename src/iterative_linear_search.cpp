//=== Alias
using value_type = long int ; //!< Simple alias to help code maintenance.

/// Implements an iterative linear seach on an range [first; last) of integers.
/*!
 * \param first Pointer to the first element in the range.
 * \param last Pointer past the last valid element in the range.
 * \param value The target value we are looking for within the range.
 * \return A pointer to the target value within the range; or last, in case the value is not in the range.
 */
const value_type * lsearch( const value_type *first, const value_type *last, value_type value ) {

  while(first!=last){
    if(*first==value){
      return first;
    }

    first++;
  }

    return last;
}
