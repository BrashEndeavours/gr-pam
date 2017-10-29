/* -*- c++ -*- */

#define PAM_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "pam_swig_doc.i"

%{
#include "pam/pam_slicer_fb.h"
%}


%include "pam/pam_slicer_fb.h"
GR_SWIG_BLOCK_MAGIC2(pam, pam_slicer_fb);
