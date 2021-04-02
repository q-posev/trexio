%module pytrexio
#define SWIGWORDSIZE64

%{
/* Includes the header in the wrapper code */
#include "trexio.h"
#include "trexio_s.h"
#include "trexio_private.h"
#include "trexio_text.h"
#include "trexio_hdf5.h"
%}
 
/* Parse the header file to generate wrappers */
%include <stdint.i>
%include "carrays.i"
%array_class(double, doubleArray);
%include "trexio.h"
%include "trexio_s.h"
%include "trexio_private.h"
%include "trexio_text.h"
%include "trexio_hdf5.h"
