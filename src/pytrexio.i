%module pytrexio
#define SWIGWORDSIZE64
%{
/* Include the headers in the wrapper code */
#include "trexio.h"
#include "trexio_s.h"
#include "trexio_private.h"
#include "trexio_text.h"
#include "trexio_hdf5.h"
%}
/* Include stdint to recognize types from stdint.h */
%include <stdint.i>
/* Include carrays to work with C-like arrays */
%include "carrays.i"
/* Include classes that correspond to integer and float arrays */
%array_class(double, doubleArray);
%array_class(float, floatArray);
%array_class(int32_t, int32Array);
%array_class(int64_t, int64Array);
/* Include typemaps to play with output and input re-casting */
%include typemaps.i
/* Redefine the int32_t* and int64_t* num to be output */
%apply int *OUTPUT { int32_t* const num};
%apply int *OUTPUT { int64_t* const num};
/*
%apply double *INOUT { float* const dataset};
%apply double *INOUT { double* const dataset};
*/
/* Parse the header files to generate wrappers */
%include "trexio.h"
%include "trexio_s.h"
%include "trexio_private.h"
%include "trexio_text.h"
%include "trexio_hdf5.h"
