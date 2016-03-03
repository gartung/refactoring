#!/bin/env perl
use strict;

use vars qw(%dir_list);
BEGIN { %dir_list = (
                        "larcore_SummaryData" => "larcorelite_SummaryData",
                        "lardata_AnalysisBase" => "lardatalite_AnalysisBase",
                        "lardata_MCBase" => "lardatalite_MCBase",
                        "lardata_OpticalDetectorData" => "lardatalite_OpticalDetectorData",
                        "lardata_RawData" => "lardatalite_RawData",
                        "lardata_RecoBase" => "lardatalite_RecoBase",
			"larsim_Simulation" => "larsim_Simulation larsimlite_Simulation",
		       ); }

foreach my $lib (sort keys %dir_list) {
   next if m&add_subdirectory&i;
   next if m&simple_plugin&i;
   next if m&larsim_Simulation larsimlite_Simulation&i;
  #s&\b\Q${lib}\E([^\.\s]*\b)([^\.]|$)&$dir_list{$lib}${1}${2}&g and last;
  s&\b\Q${lib}\E\b([^\.]|$)&$dir_list{$lib}${1}${2}&g and last;
}

s&\$\{LARCORE_SUMMARYDATA\}&larcorelite_SummaryData&g;
s&\$\{LARDATA_ANALYSISBASE\}&lardatalite_AnalysisBase&g;
s&\$\{LARDATA_MCBASE\}&lardatalite_MCBase&g;
s&\$\{LARDATA_OPTICALDETECTORDATA\}&lardatalite_OpticalDetectorData&g;
s&\$\{LARDATA_RAWdATA\}&lardatalite_RawData&g;
s&\$\{LARDATA_RECOBASE\}&lardatalite_RecoBase&g;
s&\$\{LARSIM_SIMULATION\}&larsimlite_Simulation&g;
