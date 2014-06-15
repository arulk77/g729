#!/usr/bin/perl 
#---------------------------------------------------------
# Perl scrip to convert an XML format to a CSV file
# format 
#---------------------------------------------------------
use Getopt::Long;
my $results;
my $csp = "@";
my ($csv,$xml);
$csv=$xml="";
## Command line parsing 
$results = GetOptions ("length=i" => \$length,
                       "help"     => \$help,
		       "csv_sep=s"=> \$csp,
		       "csv=s"    => \$f_csv,
		       "xml=s"    => \$f_xml,
                       "h"        => \$help);

##-----------------------------------------------------------------------------------------
## Call the help routine
##-----------------------------------------------------------------------------------------
&help() if $help;
die "No input xml file specified.. Try xml2csv.pl -h for more help" if($f_xml !~ /\w+/);

my (@xml_arr,@csv_arr);

## Read the xml file
open FILE,"<$f_xml" or die "Cannot open $f_xml in read mode";
@xml_arr = <FILE>; close FILE;

## Parse each ROW
foreach (@xml_arr) {
    if(/\<Row/../\<\/Row/) {
	if(/\<Row/){
	    $csv_e = ""; next;
	} 
	/\<Data.*?\>(.*?)\<\/Data/;
	$csv_e .= "\"${1}\"${csp}";
	## Replace the code characters
        $csv_e =~ s/&lt;/</g;
        $csv_e =~ s/&gt;/>/g;
        $csv_e =~ s/&quot;/"/g;
	push @csv_arr,"$csv_e\n" if(/\<\/Row/); ## Add newline character at the end
    }
}

if($f_csv !~ /\w+/) { $f_xml =~ /(.*?).xml/; $f_csv = "$1.csv";}
open FILE,">$f_csv" or die "Cannot open $f_csv in write mode";

print FILE @csv_arr;
close FILE;

##-------------------------------------------------------------------------------------------
## Subroutine for the help menu
##-------------------------------------------------------------------------------------------
sub help {
  print <<'EOH';
  xml2csv.pl -[h|help] -[csv_sep] <seperator> -xml <xml_file> -[csv] <csv_file>
  -h      print the help menu
  -help   print the help menu
  -csv_sep <Seperator character>
          Use the given seperator for the CSV file seperation. Default is @ 
  -xml   <file name>
          The xml file which needs to be parsed
  -csv <file_name>
          Use the given csv file name to generate the csv file from the given xml file
          Default is xml file name with the csv extenstion
EOH
exit 0; ## Exit without any error
}
