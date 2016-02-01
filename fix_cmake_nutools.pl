use strict;

use vars qw(%dir_list);
BEGIN { %dir_list = (
	"SimulationBase" => "nusimdata_SimulationBase",
	"SimulationBase_dict" => "nusimdata_SimulationBase_dict",
	"EventDisplayBase" => "nutools_EventDisplayBase",
	"EventDisplay" => "nutools_EventDisplay",
	"EventGeneratorBaseCRY" => "nutools_EventGeneratorBaseCRY",
	"EventGeneratorBaseGENIE" => "nutools_EventGeneratorBaseGENIE",
	"EventGeneratorBase_test_EventGeneratorTest_module" => "nutools_EventGeneratorBase_test_EventGeneratorTest_module",
	"IFDatabase" => "nutools_IFDatabase",
	"G4Base" => "nutools_G4Base",
	"NuBeamWeights" => "nutools_NuBeamWeights",
	"NuReweightArt" => "nutools_NuReweightArt",
	"NuReweight" => "nutools_NuReweight",
	"MagneticField_service" => "nutools_MagneticField_MagneticField_service"
		       ); }

foreach my $lib (sort keys %dir_list) {
   next if m&add_subdirectory&i;
   next if m&simple_plugin&i;
  #s&\b\Q${lib}\E([^\.\s]*\b)([^\.]|$)&$dir_list{$lib}${1}${2}&g and last;
  s&\b\Q${lib}\E\b([^\.]|$)&$dir_list{$lib}${1}${2}&g and last;
}
