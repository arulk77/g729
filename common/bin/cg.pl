#!/usr/bin/perl 
#---------------------------------------------------------
# Perl script to generate auto code from the csv file  
#---------------------------------------------------------
use Getopt::Long;
my $results;
my ($help,$csv_fn,$length,$hdr_fn,$ftr_fn,$path,$csp,$ver_fn); 
my ($no_sm_flg);
$csv_fn=$hdr_fn=$ftr_fn=$ver_fn="";
$path="./";
$csp="@";
$no_sm_flg = 0;
my $comm = "CG.PL:";

## Command line parsing 
$results = GetOptions ("length=i" => \$length,
                       "help"     => \$help,
                       "path=s"     => \$path,
                       "csv=s"    => \$csv_fn,
                       "ver=s"    => \$ver_fn,
		       "csv_sep=s"=> \$csp,
                       "hdr=s"    => \$hdr_fn,
		       "nosm"     => \$no_sm_flg,
                       "h"        => \$help);
## Variables used in this script
my ($header,$module,@ports);

##-----------------------------------------------------------------------------------------
## Call the help routine
##-----------------------------------------------------------------------------------------
&help() if $help;

##-----------------------------------------------------------------------------------------
## First have the header file 
##-----------------------------------------------------------------------------------------
if($hdr_fn ne "") {
  open FILE,"<$hdr_fn" or die "Cannot open $hdr_fn in read mode";
  while (<FILE>) { $header .= $_; } 
  close FILE;
} else {
  $header="//--> CGKS:AUTO_GENERATED
//------------------------------------------------------- 
// (c) 2012 Arasan Chip Systems
// Project : ALPOTG
//------------------------------------------------------- 
";
}

## Imprint the key word
my $footer="//CGKE:AUTO_GENERATED\n";
my ($x);
my (@port_arr,@csv_arr,@param_arr,@inst_arr,@inst_map_arr,@wire_arr,@wire_dec_arr,@sm_c_arr);

## Parse for the ports
open FILE,"<$csv_fn" or die "Cannot open $csv_fn in read mode"; @csv_arr = <FILE>; close FILE;&cleanup_csv(\@csv_arr); 

## Parse different parts of the CSV file 
&parse_params(\@csv_arr,\@param_arr);
&parse_ports(\@csv_arr,\@port_arr);

## Now instantiate each module 
&get_key_word(\@csv_arr,\@inst_arr,"INST_");
foreach (@inst_arr) {
    &parse_inst(\@csv_arr,\@inst_map_arr,\@wire_arr,\@param_arr,$_);
}

## Now get the state machine array
&get_key_word(\@csv_arr,\@sm_arr,"STATE_");
foreach (@sm_arr) {
    &parse_state(\@csv_arr,\@sm_dec_arr,\@sm_c_arr,$_);
}

##-----------------------------------------------------------------------------------------
## Print the module name
##-----------------------------------------------------------------------------------------
$module = $csv_fn;  
$module =~ s/\..*$//g;
$module =~ s/.*\///g;
push @module,"module $module \n";

##-----------------------------------------------------------------------------------------
## Print the parameter for the given array
##-----------------------------------------------------------------------------------------
push @module,"# (\n" if ($#param_arr+1 > 0);
foreach $x (@param_arr) {
    if($$x{param} =~ m/\S+/) {
      if ($$x{type} =~ /str/i) {
        $p = sprintf (" parameter %-30s = %-30s, // %s\n",$$x{param},$$x{value},$$x{comment}) if($$x{param} =~ m/\S+/);
      } elsif ($$x{type} =~ /hex/i) {
        $p = sprintf (" parameter %-30s = 'h%-10s, // %s\n",$$x{param},$$x{value},$$x{comment}) if($$x{param} =~ m/\S+/);
      } else {
        $p = sprintf (" parameter %-30s = %-10d, // %s\n",$$x{param},$$x{value},$$x{comment}) if($$x{param} =~ m/\S+/);
      }
    }
    $p = sprintf ("// %s\n",$$x{comment}) if($$x{param} !~ m/\S+/ && $$x{comment} =~ m/\S+/);
    ## If it is a verilog code then print as it is
    $p = sprintf ("%s\n",$$x{comment}) if($$x{param} !~ m/\S+/ && $$x{comment} =~ m/\S+/ && $$x{nc} =~ m/ver/);
    push @module,$p;
}
rm_comma_from_last_line(\@module) if($#param_arr+1 > 0);
push @module,")\n" if ($#param_arr+1 > 0);
push @module,"(\n";

##-----------------------------------------------------------------------------------------
## Print the port declaration array
##-----------------------------------------------------------------------------------------
foreach $x(@port_arr) {
    $wire_or_reg = "wire"; 
    $wire_or_reg = "reg" if($$x{reg} =~ m/reg/i);
    $p = sprintf("  %-8s %-4s %-30s %-30s, // %s\n",$$x{dir},$wire_or_reg,$$x{width},$$x{port},$$x{comment}) if($$x{port} =~ /\S+/);
    $p = sprintf("  // %s\n",$$x{comment}) if($$x{port} !~ /\w+/ && $$x{comment} =~ /\w+/);
    ## Print the verilog code as it is
    $p = sprintf("  %s\n",$$x{port}) if($$x{dir} =~ m/ver/);
    push @module,$p;
} 
rm_comma_from_last_line(\@module) if($#port_arr+1 > 0);
push @module,");\n";

##-----------------------------------------------------------------------------------------
## Print the wire declaration array 
##-----------------------------------------------------------------------------------------
## Remove any unwanted declaration form the array and then write the declaraton part
splice @r_wire_arr;
foreach $x(@wire_arr) {
	$n_flg = 1;
    foreach $y(@port_arr)   { if($$y{port} =~ /^$$x{name}$/){$n_flg--;last;}} 
	foreach $y(@r_wire_arr) { if($$y{name} =~ /^$$x{name}$/){$n_flg--;last;}}

    ## If the delcaration is not there then push into the array
    if($n_flg > 0) {
		push @r_wire_arr,$x;
		push @wire_dec_arr,sprintf("wire %30s %-30s;\n",$$x{width},$$x{name});
    }
}



## Print the verilog file to the given file if given
if ($ver_fn =~ /\S+/) { 
    open (FILE,">./$ver_fn") or die "Cannot create $ver_fn in write mode";
    print FILE $header,@module,@wire_dec_arr,@inst_map_arr,@sm_dec_arr,$footer; close FILE;
    if($#sm_c_arr>0) {
      open (FILE,">./${ver_fn}.sm") or die "Cannot create ${ver_fn} in write mode";
      print FILE @sm_c_arr; close FILE;
    }
} else {
    print $header,@module,@wire_dec_arr,@inst_map_arr,@sm_dec_arr,$footer;
}

##-------------------------------------------------------------------------------------------
##-------------------------------------------------------------------------------------------
## ++++++++++++++++++++ Sub Routines ++++++++++++++++++++++++
##-------------------------------------------------------------------------------------------
##-------------------------------------------------------------------------------------------

##-------------------------------------------------------------------------------------------
## Subroutine to print state machine declaration. 
##-------------------------------------------------------------------------------------------
sub parse_state {
    my $farr_ptr  = shift @_;
    my $sm_ptr    = shift @_;
    my $sm_d_ptr  = shift @_;
    my $sm_string = shift @_;

    my (@sm_hash_arr,@sm_comb);
    my ($clock,$reset_n,$prs_sm_assign,$rst_state,$p,$ver_code,$init_code);
    $clock = "clock"; $reset_n = "reset_n"; $rst_state = "sm_idle";
    $prs_sm_assign = "prs_$sm_string <= nxt_$sm_string;";
    $ver_code=$init_code=$default="";
    foreach (@$farr_ptr) {
	if(/CGKS:STATE_${sm_string}$/../CGKE:STATE_${sm_string}$/) {
	    ($state,$decl,$x) = split(/${csp}/,$_);
	    ## If there are any keyword then 
	    if($state =~ /CGK:(.*)$/) {
		$clock = $decl if($1 =~ /clock/);
		$reset_n = $decl if($1 =~ /reset_n/);
		$rst_state = $decl if($1 =~ /reset_state/);
		$prs_sm_assign = $decl if($1 =~ /sm_assign/);
		$ver_code = $decl if($1 =~ /verilog/);
		$init_code = $decl if ($1 =~ /initial/);
		$default = $decl if($1 =~ /default/);
		next; ## If a key word is hit then move to next array element
	    }
	    next if(/CGKS|CGKE/);
	    push @sm_hash_arr,{state => "${sm_string}_${state}", decl => $decl} if($x !~ /^nc\s*$/);
	}
    }

    ## Enter the state machine declaration first
    $t_states = $#sm_hash_arr+1;
    $p = sprintf("reg [%d-1 : 0] prs_%-25s; // Present state for %s\n",$t_states,$sm_string,$sm_string); push @$sm_ptr,$p;
    $p = sprintf("reg [%d-1 : 0] nxt_%-25s; // Next state for %s\n",$t_states,$sm_string,$sm_string); push @$sm_ptr,$p;
    $i = 1;

    ## The parameter declaratino for each state
    push @$sm_ptr,"// Declaration of the state parameters\n"; 
    foreach $state(@sm_hash_arr) {
	push @$sm_ptr,sprintf("parameter %-31s = ${t_states}'b%0${t_states}b;\n",$$state{state},$i);
	$i = $i << 1;
    }

    ## Wire declartion for each state
    $i = 0; push @$sm_ptr,"// Nets to represent the individual states\n";
    foreach $state(@sm_hash_arr) {
        $s = "prs_$$state{state}";
	$p = sprintf("assign %-40s = %s[%d];\n",$s,"prs_${sm_string}",$i); push @$sm_ptr,$p; 
        $s = "nxt_$$state{state}";
	$p = sprintf("assign %-40s = %s[%d];\n",$s,"nxt_${sm_string}",$i); push @$sm_ptr,$p; $i++;
    }

    ## Print the combinatorial logic for the state machine
    push @sm_comb,"// Verilog code before the combinatorial state machine \n";
    &rm_schar_and_append($ver_code,0,\@sm_comb);
    push @sm_comb,sprintf("// Combinatorial logic for the state machine \"$sm_string\" \n");
    push @sm_comb,sprintf("always @(*) begin\n");
    &rm_schar_and_append($init_code,1,\@sm_comb);
    &rm_schar_and_append("case (prs_$sm_string)\n",1,\@sm_comb);
    foreach $state(@sm_hash_arr) {
	&rm_schar_and_append("\n// Next state logic for $$state{state} ",1,\@sm_comb);
	&rm_schar_and_append("$$state{state} : begin",1,\@sm_comb);
	&rm_schar_and_append("if() begin",2,\@sm_comb);
	&rm_schar_and_append("end else begin",2,\@sm_comb);
	&rm_schar_and_append("nxt_$sm_string = $$state{state};",3,\@sm_comb);
	&rm_schar_and_append("end",2,\@sm_comb);
	&rm_schar_and_append($$state{decl},2,\@sm_comb);
	&rm_schar_and_append("end",1,\@sm_comb);
    }

    ## Print the default state if provided 
    if($default =~ /\S+/) {
	&rm_schar_and_append("// Default state logic for $sm_string\n",1,\@sm_comb);
	&rm_schar_and_append("default : begin",1,\@sm_comb);
	&rm_schar_and_append($default,2,\@sm_comb);
	&rm_schar_and_append("end",1,\@sm_comb);
    }

    &rm_schar_and_append("endcase",1,\@sm_comb);
    push @sm_comb,sprintf("end\n");

    ## Print the register declaration for the state flop 
    push @sm_comb,sprintf("// Flop to represent the present state of the $sm_string \n");
    push @sm_comb,sprintf("always @(negedge $reset_n or posedge $clock) begin\n");
    &rm_schar_and_append("if ($reset_n == 1'b0) begin",1,\@sm_comb);
    &rm_schar_and_append("prs_$sm_string <= $rst_state;",2,\@sm_comb);
    &rm_schar_and_append("end else begin",1,\@sm_comb);
    &rm_schar_and_append($prs_sm_assign,2,\@sm_comb);
    &rm_schar_and_append("end",1,\@sm_comb);
    push @sm_comb,sprintf("end\n");

    push @$sm_d_ptr,@sm_comb;
}

##-------------------------------------------------------------------------------------------
## Subroutine to parse the instantiation of a given module 
##-------------------------------------------------------------------------------------------
sub parse_inst {
    my $farr_ptr = shift @_;
    my $inst_ptr = shift @_;
    my $wire_ptr = shift @_;
    my $param_ptr = shift @_;
    my $iname = shift @_;

    my ($port,$map,$x,$module,$fname,$inst_comm);
    my (@inst_csv_arr,@inst_port_arr,@inst_param_arr),
    my ($print,$p_name,$m_name,$p_rename,$m_rename);
    $iname = "INST_${iname}";

    ## First search the csv file in the list
    my @path = split(/:/,$path);
    foreach (@$farr_ptr) {
        ## Parsing a single instance
	if(/CGKS:$iname${csp}*$/ .. /CGKE:${iname}${csp}*$/) {
	    ($port,$map,$x) = split(/${csp}/,$_);
            next if($x =~ /nc/ || $port !~ /\S+/ || $map !~ /\S+/);            
            ## Find the csv file for the module and get the param and port array 
	    if($port =~ /module/i) {
		$module = $map; $module =~ s/\s|\n//g;
		## Parse the module to be instantiated
		foreach (@path) { $fname = "$_/${module}.csv";
		    if(-e "$fname") { open FILE,"<$fname"; @inst_csv_arr = <FILE>; 
				      close FILE;&cleanup_csv(\@inst_csv_arr);} 
		}
		if ($#inst_csv_arr < 0) {die "$fname file not found in the path @path";}
            }
        }
    }

    &parse_ports(\@inst_csv_arr,\@inst_port_arr);
    &parse_params(\@inst_csv_arr,\@inst_param_arr);
    push @$inst_ptr,"${module}  ";
    push @$inst_ptr,"#( \n" if ($#inst_param_arr+1 > 0);

    ## Do the port mapping for the parameters  
    foreach $arr_e(@inst_param_arr) {
        $p_name = $$arr_e{param}; $m_name = $$arr_e{value};
	if($p_name !~ /\S+/) { push @$inst_ptr,"  // $$arr_e{comment}\n" if ($$arr_e{comment} =~ /\S+/); next;}
	 
        ## Check is the PARAM is declaraed at the top level
        foreach $x(@$param_ptr) {
	    $m_name = $p_name if($$x{param} =~ /${p_name}$/);
	}
	 
        ## Check if the value has been overwritten
	foreach (@$farr_ptr) {
	    if(/CGKS:$iname${csp}*$/ .. /CGKE:$iname${csp}*$/) {
		($p_rename,$m_rename,$x) = split(/${csp}/,$_);
		next if($p_rename =~ /CGK.*?:/);
		next if($x !~ /param/);
		$m_name = $m_rename if($$arr_e{param} =~ /${p_rename}$/); 
	    }
	}

        push @$inst_ptr,sprintf("  .%-25s(%-20s),// %s\n",$p_name,$m_name,$$arr_e{comment});
    }
    &rm_comma_from_last_line($inst_ptr) if($#inst_param_arr+1 > 0);
    push @$inst_ptr,")\n" if ($#inst_param_arr+1 > 0);
    push @$inst_ptr,"$iname (\n";

    ## Now instantiate the port maps into the array
    foreach $arr_e(@inst_port_arr) {
        $p_name = $m_name = $$arr_e{port};
	if($p_name !~ /\S+/) { 
	   push @$inst_ptr,"  // $$arr_e{comment}\n" if ($$arr_e{comment} =~ /\S+/); 
	   next;
	}
	## If it is a verilog code then retain it
	if($$arr_e{dir} =~ m/ver/) {
	   push @$inst_ptr,"  $$arr_e{port}\n" if ($$arr_e{port} =~ /\S+/); 
	   next;
	}
	## Go through each port map to find out if there is a equivalent mapping 
     	foreach (@$farr_ptr) {
	    ## Check for the correct instance
	    if(/CGKS:$iname${csp}*$/ .. /CGKE:$iname${csp}*$/) {
	    ## Use the qw to get the regular expression i the maping name as it is
		($p_rename,$m_rename,$x) = split(/${csp}/,$_);
		$m_rename =~ s/\s//g;
		next if($p_rename =~ /CGK.*?:/);
		next if($p_rename =~ /module/i || $x =~ /(nc|param)/i || $p_rename !~ /\S+/ || $m_rename !~ /\S+/);
		if($p_name =~ /$p_rename/) { 
		    splice @s;
		    foreach $i(1..10){ push @s,${$i};} 
		    foreach $i(1..10){ $m_rename =~ s/\$$i/shift(@s)/ee;}
		    $m_name = $m_rename;
		}
		push @$wire_ptr,{name => $m_name, width => $$arr_e{width}} if($$arr_e{width} =~ /\S+/);
	    }
	} 
	push @$inst_ptr,sprintf("  .%-30s ( %-30s%-30s), // %s\n",$p_name,$m_name,$$arr_e{width},$$arr_e{comment});
    }
    push @$inst_ptr,");\n"; 
    &rm_comma_from_last_line($inst_ptr) if($#inst_port_arr+1 > 0);
}

##-------------------------------------------------------------------------------------------
## Routine to get the array of matching patterns.  
## Ex. Instances, state machine, flops etc. 
##-------------------------------------------------------------------------------------------
sub get_key_word {
    my $farr_ptr = shift @_;
    my $inst_ptr = shift @_;
    my $string   = shift @_;
    foreach (@$farr_ptr) { 
      push @$inst_ptr,$1 if(/CGKE:${string}(.*)/); 
    }
}

##-------------------------------------------------------------------------------------------
## Subroutine to remove the special character &#10 and append spaces as intended.
##-------------------------------------------------------------------------------------------
sub rm_schar_and_append {
    my $string = shift @_; ## String to remove special character
    my $append = shift @_; ## Number of append spaces
    my $arr_ptr = shift @_; ## Array pointer to return

    my @a;
    ## Replace the special character with newline
    $string =~ s/&#10;/\n/g;
    @a = split(/\n/,$string);
    foreach (@a) { $_ = ('   'x$append).$_; push @$arr_ptr,"$_\n"; } 
}

##-------------------------------------------------------------------------------------------
## Routine to parse the 
##-------------------------------------------------------------------------------------------
sub parse_params {
    my $farr_ptr = shift @_;
    my $aohpt_ptr = shift @_;
    my ($param,$value,$type,$max,$comment,$nc);
    
    foreach (@$farr_ptr) {
	if(/CGKS:PARAM.*/ .. /CGKE:PARAM.*/) {
	    next if(/CGK[SE]:/);
            if(m/${csp}param${csp}*/i) {
              ($param,$value,$type,$max,$comment) = split(/${csp}/,$_);
              $comment =~ s/"|\n//g; push @$aohpt_ptr, {param => $param, type => $type, value => $value, comment => $comment, nc => $nc}; 
            } else {
              ($param,$value,$type,$max,$comment,$nc) = split(/${csp}/,$_);
              if ($nc !~ /nc/) {
		 $comment = $param; $param=""; 
                 $comment =~ s/"|\n//g; push @$aohpt_ptr, {param => $param, type => $type, value => $value, comment => $comment, nc => $nc}; 
                 print "The param is $_  and  $param $type $value $comment\n";
	      } 
            }
	}
    }
}

##-------------------------------------------------------------------------------------------
## Routine that returns an array of keys for the port ## declaration
##-------------------------------------------------------------------------------------------
sub parse_ports {
    my $farr_ptr = shift @_;
    my $aohpt_ptr  = shift @_;
    my ($cfreq,$port,$dir,$width,$comment,$reg);
    
    ## Parse through the array pointer
    foreach (@$farr_ptr) {
	if(/CGKS:PORTS/ .. /CGKE:PORTS/) {
            if(m/${csp}(in|out|inout|ver)${csp}/i) {
		($port,$dir,$width,$x,$comment,$reg) = split(/${csp}/,$_); $port =~ s/\s//g if($dir !~ m/ver/i);

		if($width =~ m/^\s*1\s*$/) { $width = "";
	       	} elsif($width !~ m/:|\[/) { $width = "[$width-1:0]";} else { $width = "$width"; }

		if($dir =~ m/inout/i){ $dir = "inout";} elsif($dir =~ m/out/i) { $dir = "output"; 
		} elsif ($dir =~ m/ver/i) {$dir = "ver";}else { $dir = "input";}
		$comment =~ s/"|\n//g; push @$aohpt_ptr, {port => $port, width => $width, dir => $dir, comment => $comment, reg => $reg }; 
            } else {
              ($port,$dir,$width,$freq,$comment,$nc) = split(/${csp}/,$_);
              if ($nc !~ /nc/) {
		 $comment = $port; $port=""; $comment =~ s/"|\n//g;
                 push @$aohpt_ptr, {port => $port, width => $width, dir => $dir, comment => $comment, nc => $nc}; 
	      } 
            }

	}
    }
}

##-------------------------------------------------------------------------------------------
## Subroutine to remove the comma from the very last line
##-------------------------------------------------------------------------------------------
sub rm_comma_from_last_line {
    my $ptr = shift @_;
    my $flag = 1;
    my $last_e = $#$ptr;
    while ($flag) {
	if (($$ptr[$last_e] =~ m#^\s*//#) || ($$ptr[$last_e] =~ m/^\s*$/) || $$ptr[$last_e] !~ /,/) {
	    $last_e--; 
	    $flag-- if($last_e <0); ## If there is no comma to be removed then exit 
	} else {
	    $flag--;
	}
    } 
    ## This is the verilog , and not the csv_seperator
    $$ptr[$last_e] =~ s/,/ /;
}

##-------------------------------------------------------------------------------------------
## Subroutine to clean up the csv array. This is helpful to use the same format for 
## different versions of the xls2csv 
##-------------------------------------------------------------------------------------------
sub cleanup_csv {
    my $csv_ptr = shift @_;
    my @a,@t;
    my $s;
    foreach (@$csv_ptr) {
	next if(/^[${csp}\s\"]+$/); ## Remove any blank lines 
	if(/(CGK[SE]+:\w+).*$/) {push @a,"$1\n"; next;} ## Seperate out CGK key words
	$_ =~ s/\s+${csp}/${csp}/g;
	$_ =~ s/CGK:Worksheet//g;
        $_ =~ s/\s*$//g; $_ =~ s/\n//g;
	$_ =~ s/^\s*(\S+)/$1/; ## Replace any space character at the begining
	@t = split(/"/,$_); 

	if(/"[^"${csp}]+$/ || /^[^\"]+$/ || /^[^\"]+\"/ ) {
	    $s .= "$_&#10;"; next if(!/^[^\"]+\"/);
	} else { $s = $_; }
	$s =~ s/"//g;
	push @a,$s; $s="";
    }
    @$csv_ptr = @a;
}

##-------------------------------------------------------------------------------------------
## Subroutine for the help menu
##-------------------------------------------------------------------------------------------
sub help {
  print <<'EOH';
  cg.pl -h -help -csv <file name>
  -h      print the help menu
  -help   print the help menu
  -nosm   The combinatorial logic of the state machine is not generted to the file if 
          this flag is used
  -csv <file_name>
          Use the given csv file for the verilog module creation
  -ver <file_name>
          Use the given name for the verilog file to be created 
  -csv_sep <Seperator character>
          Use the given seperator for the CSV file seperation. Default is @ 
  -path <PATH>
          Use the provided path to search CSV file for any instantiated modules. 
  -hdr <file_name>
          Header to be used for file creation
EOH
exit 0; ## Exit without any error
}
