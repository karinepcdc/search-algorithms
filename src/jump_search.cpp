#include "../includes/jump_search.h" 


/// Implements a jump search on an array of integers.
/*! 
 * \param first Pointer to the first element in the range.
 * \param last Pointer past the last valid element in the range.
 * \param value The target value we are looking for within the range 
 * \return A pointer to the target value withing the range; or last, in case the value is not in the range. 
 */
const value_type * jumpsearch(const value_type *first, const value_type *last, value_type value){
  const value_type *current;     // pointer to current value being analyzed
  int step = sqrt(last - first); // search step
  
  //std::cout << "step: " << step << "\n";
  current = first + step;

  while(current < last){

    //std::cout << "current: " << *current << std::endl;
    
    if(value == *current){ // found!
      return current;
    } else if(value < *current){ // check if value is in the interval (current - step,current]
      const value_type * lsreturn; 

      //std::cout << "linear search range: " <<  *(current - step) << " - " << *current << "\n";
      lsreturn = lsearch(current - step, current, value); // do linear search on the interval 
      if(lsreturn == current){
	return last; 
      } else{
	return lsreturn;
      }
    }
    current += step;
  }

  if(value <= *(last-1)){
    //std::cout << "Last linear search range: " <<  *(current - step) << " - " << *last << "\n";
    return lsearch(current - step, last, value); // do linear search on the last interval
  }  

  return last;

}
