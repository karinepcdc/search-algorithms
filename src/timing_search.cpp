#include <iostream> // std::cout; std::endl; 
#include <vector>   // std::begin; std::end; 
#include <iterator> 
#include <chrono>   // std::chrono;
#include <sstream>  // std::stringstream; 
#include <fstream>  // std::ofstream;
#include <string>

#include "../includes/searching.h"

/*
// Test maximum vector size
void maxVecTest() {
    std::vector<long int> v;
    std::cout << "Maximum long int vector size: " << v.max_size() << std::endl;
}


// return a vector filled in an ordered way with integers 
long int * sampleArray(int step){
  std::vector<long int> V; // test array
  long int V[5]
  //V.resize(V.max_size()); // Allocate an array with the maximum long int size possible

}
*/

int main(int argc, char *argv[]){

  long int V_size = 1000000;
  value_type *V = new value_type[V_size];  // vector of samples
  value_type *sample_end=NULL;      // pointer to V sample end
  int Nsamples{0}, sample_isize{0}; // number of samples and initial sample size
  long int sample_step{0};          // define samples growth

  double t_mean; // average execution time

  // pointer to the different search algorithms functions 
  const value_type * (*call_seach_alg[])( const value_type *, const value_type *, value_type) 
    = {lsearch, bsearch_it, bsearch_rec};

  enum Algorithms {LSEARCH, BSEARCH_IT, BSEARCH_REC};
  std::string name_alg[]={"linear search","binary search (iterative)", "binary search (recursive)"};
  Algorithms sel_alg;  

  if(argc < 4) {
    std::cout << ">>> [Error] Provide: initial sample size; number of samples; search algorithm.\n";
    std::cout << ">>> Usage: <program name> <number> <number> <number>\n";
    std::cout << ">>> Search algorithm options:\n"
	      << LSEARCH << " - Linear seach \n"
	      << BSEARCH_IT << " - Binary Search (iterative)\n"
	      << BSEARCH_REC << " - Binary Search (recursive)"
	      << std::endl;

    return -1;
  }

  // sample distribution
  std::stringstream convert1(argv[1]);
  std::stringstream convert2(argv[2]);
  std::stringstream convert3(argv[3]);

  // set default values
  int num{0};
  if(!(convert1 >> sample_isize))
    sample_isize = 1000;
  else if(!(convert2 >> Nsamples))
    Nsamples = 100;
  else if(!(convert3 >> num))
    num = 0; // LSEARCH 

  sel_alg=static_cast<Algorithms>(num);
  

  sample_step=(V_size - sample_isize)/Nsamples; 

  std::cout << "\n*** Running simulations for " << Nsamples << " with initial sample size " 
	    << sample_isize;
  std::cout << " and linear grow of " << sample_step << " ***" << std::endl;
  
  // fill vector with even numbers in order
  for(long int i=0; i<V_size; i++){
    V[i]=2*i;
  }
  
  // Measuring execution time of each search methold
  std::cout << ">>> Doing " << name_alg[sel_alg] << "\n *** number of samples: "<< Nsamples << " ***\n";

  // open file to register data
  std::ofstream datafile("../plots/data/lsearch_time.dat", std::ofstream::out);
  if(!datafile){
    std::cerr << "file could not be opened for writing." << std::endl;
    return -1;
  }
  
  datafile << "# array size \t execution time (\\mus)\n";
  
  // calculate execution time for an linear incresent sample size
  sample_end = V + sample_isize; // Define size of the sample vector
  while(sample_end <= V + V_size){
    
    // Calculate progressive average for a sample size
    t_mean=0;
    for(int i=1; i<=100; i++){
    
      // measure execution time
      auto start = std::chrono::high_resolution_clock::now();
      // checking wost case: searching element that is outside range
      (*call_seach_alg[sel_alg])(V, sample_end, *(sample_end-1) + 1); 
      auto stop = std::chrono::high_resolution_clock::now();
  
      auto duration = std::chrono::duration_cast<std::chrono::microseconds>(stop - start);
      t_mean += (duration.count() - t_mean)/(double)i;
    }

    datafile << sample_end - V << "\t\t" <<  t_mean << "\n";
  
    sample_end += sample_step;
    
  }
  datafile << std::endl;
  
  datafile.close();

  delete[] V;
 
  return 0;
}