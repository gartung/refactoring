s/-lSimulationBase\(\b\|$\)/-lnusimdata_SimulationBase/g
s/-lColors_service\(\b\|$\)/-lnutools_Colors_service/g
s/-lDBI_service\(\b\|$\)/-lnutools_DBI_service/g
s/-lEventDisplayBase\(\b\|$\)/-lnutools_EventDisplayBase/g
s/-lEventDisplay_service\(\b\|$\)/-lnutools_EventDisplay_service/g
s/-lEventGeneratorBaseCRY\(\b\|$\)/-lnutools_EventGeneratorBaseCRY/g
s/-lEventGeneratorBaseGENIE\(\b\|$\)/-lnutools_EventGeneratorBaseGENIE/g
s/-lEventGeneratorBase_test_EventGeneratorTest_module\(\b\|$\)/-lnutools_EventGeneratorBase_test_EventGeneratorTest_module/g
s/-lG4Base\(\b\|$\)/-lnutools_G4Base/g
s/-lIFDatabase\(\b\|$\)/-lnutools_IFDatabase/g
s/-lMagneticField_service\(\b\|$\)/-lnutools_MagneticField_service/g
s/-lNuBeamWeights\(\b\|$\)/-lnutools_NuBeamWeights/g
s/-lNuReweightArt\(\b\|$\)/-lnutools_NuReweightArt/g
s/-lNuReweight\(\b\|$\)/-lnutools_NuReweight/g
s/-lReweightAna_module\(\b\|$\)/-lnutools_ReweightAna_module/g
s/-lScanOptions_service\(\b\|$\)/-lnutools_ScanOptions_service/g
s/-I$(NUTOOLS_INC)/-I$(NUTOOLS_INC) -I$(NUSIMDATA_INC)/g
s/-L$(NUTOOLS_LIB)/-L$(NUTOOLS_LIB) -L$(NUSIMDATA_LIB)/g
