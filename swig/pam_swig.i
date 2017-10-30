/* -*- c++ -*- */

#define PAM_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "pam_swig_doc.i"

%{
#include "pam/pam_slicer_fb.h"
#include "pam/fourpam_demod_ff.h"
%}


%include "pam/pam_slicer_fb.h"
GR_SWIG_BLOCK_MAGIC2(pam, pam_slicer_fb);
%include "pam/fourpam_demod_ff.h"
GR_SWIG_BLOCK_MAGIC2(pam, fourpam_demod_ff);
