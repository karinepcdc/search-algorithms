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
  int size_current= last-first;;
  const value_type * current;

  if(size_current %2 == 1 && size_current != 1){
    size_current++;
  }
  size_current=size_current/2;
  current=first+size_current;
  //std::cout << "size_current: " << size_current << " current: " << *current << std::endl;
  
  while(current>=first && current<last && size_current>0){
    if(size_current %2 == 1 && size_current != 1){
      size_current++;
    }
    size_current=size_current/2;
 
    if(*current==value){
      return current;
    } else if(*current<value){
      current=current+size_current;
    } else{
      current=current-size_current;
    }
    //std::cout << "size_current: " << size_current << " current: " << *current << std::endl;

  }
  
    return last; // STUB
}
