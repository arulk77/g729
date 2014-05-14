
1 - TITLE
---------
/*
   ITU-T G.729 Annex C+ - Reference C code for floating point
   implementation of G.729 at 6.4/8/11.8 kbit/s with DTX functionality
   (integration of Annexes B, D and E)
                          Version 2.1 of October 1999
*/

2 - VERSION
-----------
This is version 2.1
ITU-T G.729/Annex C+ was approved on 02/2000


3 - COPYRIGHT AND INTELLECTUAL PROPERTY
---------------------------------------

This software package is provided as part of ITU-T Recommendation G.729 Annex C+.

   ITU-T G.729 Annex  C+ floating point ANSI C source code
   Copyright (C) 1999, AT&T, France Telecom, NTT, University of
   Sherbrooke, Conexant, Ericsson. All rights reserved.

   Original Copyright (c) 1995, AT&T, France Telecom, NTT,
   Universite de Sherbrooke.
   All rights reserved.
	 +
   Copyright (c) 1996, AT&T, France Telecom, NTT, Rockwell International,
   Universite de Sherbrooke.
   All rights reserved.
	+
   Copyright (c) 1997, Ericsson, NTT.
   All rights reserved.
	+
   Copyright (c) 1997, France Telecom, Universite de Sherbrooke.
   All rights reserved.

The copy of the source C code, version 2.1, is given under Copyright of the
authors, only for the purpose of establishing the specification of a codec.

All rights are reserved. All other use of the material is prohibited.

4 - SUPPORT
------------
For distribution of update software, please contact:

    Sales Department
    ITU
    Place des Nations
    CH-1211 Geneve 20
    SWITZERLAND
    email: sales@itu.int

For reporting problems, please contact TSB helpdesk service at:

    TSB Helpdesk service
    ITU
    Place des Nations
    CH-1211 Geneve 20
    SWITZERLAND 
    fax: +41 22 730 5853
    email: tsbedh@itu.int

5 - TECHNICAL DETAILS
---------------------

5.1 - COMPILATION
-----------------
Edit the file typedef.h to comply to your target platform

For UNIX systems the following makefiles are provided

   codercp.mak
   decodcp.mak

Edit the makefiles codercp.mak and decodcp.mak to set the proper options
for your system.
The command to compile and link all code on a UNIX system is

         make -f codercp.mak
         make -f decodcp.mak

For other platforms, the *.mak files can be used to work out the
compilation procedures.

This code has been successfully compiled and run on the following
platforms:

Platform                   Operating System      Compiler
-----------------------------------------------------------------------------
DEC ALPHA                  OSF/1                 DEC OSF/1 cc
PC                         DOS 6.21              Borland 3.1
		Watcom 9.6
		Microsoft 8
PC                         Window95              MS Visual C++ 5.0
PC                         WindowNT4             MS Visual C++ 6.0
HP-UX                      B.10.01               gcc
SGI-IRIX                   IRIX 5.3              SGI Rel 5.3 cc

5.2 - DESCRIPTION
-----------------
  This package includes the files needed to build the floating point version
  of the global G.729 codec aty 8 kbit/s (annex C) with lower and higher bit
  rate extensions at 6.4 kbit/s and 11.8 kbit/s and with dtx functionality

5.3 - USAGE
-----------
codercp  inputfile bitstreamfile dtx_option rate_option
decodcp bitstreamfile outputfile

The following files are used or generated
  inputfile    8 kHz sampled data file 16 bit PCM (binary)
  outputfile   8 kHz sampled data file 16 bit PCM (binary)
  bitstreamfile  binary file containing bitstream
The following parameters are used for the encoder
	dtx_option = 0 dtx disabled (default)
			   = 1 dtx enabled
  rate_option   = 0 : lower rate (6.4 kb/s)
				= 1 : G729 (8.0 kb/s)
				= 2 : higher rate (11.8 kb/s)
				= file_rate_name : a binary file of 16 bit word containing
				either 0, 1  or 2 to select the rate on a frame by frame basis
				 the default is 1 (8 kb/s)


5.4 - BITSTREAM FORMAT
----------------------
The bitstream file contains for each 10 ms speech frame,
For rate 8 kbit/s,  82 16-bit words or for rate 6.4 kbit/s, 66 16-bit words,
or for rate 11.8 kbit/s, 120 16-bit words, or for SID frame, 17(or 18) 16-bit words,
or for not transmitted frame, 2 16-bit words.

The first word is the synchronization word SYNC_WORD.
The second word contains the value serial_size which is 80 for rate 8 kbit/s,
64 for rate 6.4 kbit/s, 118 for rate 11.8 kbit/s, 15( or 16) for SID frame,
0 for Non-transmitted frame
For the rate 8 kbit/s, the next 80 words contain the parameters as described
in G729 recommendation text. For the other rates, the next "serial_size"
words are described in bitstrea.txt.
Bitstream information - all parameters start with msb
The bits are defined as follows:

#define SYNC_WORD (short)0x6b21
#define BIT_0     (short)0x007f /* definition of zero-bit in bit-stream     */
#define BIT_1     (short)0x0081 /* definition of one-bit in bit-stream      */

A bad frame is indicated by setting all "serial_size" bits to zero.
Except, for not transmitted frame, where the synchronization word SYNC_WORD is
set to (short)0x6b20.
