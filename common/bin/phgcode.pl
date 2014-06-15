#!/usr/bin/perl
while (<>) {
  if(/CGKS:HAND_GENERATED/../CGKE:HAND_GENERATED/){ 
   print $_ if(!/CGK[SE]:HAND_GENERATED/); 
  }
}
