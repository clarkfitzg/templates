#include <iostream>

#include <R.h>
#include <Rinternals.h>

extern "C"
SEXP CPP_hello(SEXP x)
{
    // Eventual goal is to redirect cout into a string
    // Following
    // http://stackoverflow.com/questions/5419356/redirect-stdout-stderr-to-a-string
    //std::stringstream buffer;
    //std::streambuf * old = std::cout.rdbuf(buffer.rdbuf());
    //std::string xs = std::to_string(42);
    //std::cout << "Hello " << x;
    std::cout << "Hello" << std::endl;

    return(x);
}
