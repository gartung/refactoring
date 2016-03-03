use strict;

use vars qw(%inc_translations);
BEGIN { %inc_translations = (
"larcore/SimpleTypesAndConstants/geo_types.h" => "larcorelite/SimpleTypesAndConstants/geo_types.h",
"larcore/SimpleTypesAndConstants/PhysicalConstants.h" => "larcorelite/SimpleTypesAndConstants/PhysicalConstants.h",
"larcore/SimpleTypesAndConstants/RawTypes.h" => "larcorelite/SimpleTypesAndConstants/RawTypes.h",
"larcore/SummaryData/POTSummary.h" => "larcorelite/SummaryData/POTSummary.h",
"larcore/SummaryData/RunData.h" => "larcorelite/SummaryData/RunData.h",
"larsim/Simulation/AuxDetSimChannel.h" => "larsimlite/Simulation/AuxDetSimChannel.h",
"larsim/Simulation/BeamGateInfo.h" => "larsimlite/Simulation/BeamGateInfo.h",
"larsim/Simulation/BeamTypes.h" => "larsimlite/Simulation/BeamTypes.h",
"larsim/Simulation/SimChannel.h" => "larsimlite/Simulation/SimChannel.h",
"larsim/Simulation/SimPhotons.h" => "larsimlite/Simulation/SimPhotons.h",
"larsim/Simulation/sim.h" => "larsimlite/Simulation/sim.h",
"lardata/AnalysisBase/Calorimetry.h" => "lardatalite/AnalysisBase/Calorimetry.h",
"lardata/AnalysisBase/CosmicTag.h" => "lardatalite/AnalysisBase/CosmicTag.h",
"lardata/AnalysisBase/FlashMatch.h" => "lardatalite/AnalysisBase/FlashMatch.h",
"lardata/AnalysisBase/MVAPIDResult.h" => "lardatalite/AnalysisBase/MVAPIDResult.h",
"lardata/AnalysisBase/ParticleID.h" => "lardatalite/AnalysisBase/ParticleID.h",
"lardata/AnalysisBase/T0.h" => "lardatalite/AnalysisBase/T0.h",
"lardata/MCBase/MCBaseException.h" => "lardatalite/MCBase/MCBaseException.h",
"lardata/MCBase/MCDataHolder.h" => "lardatalite/MCBase/MCDataHolder.h",
"lardata/MCBase/MCHitCollection.h" => "lardatalite/MCBase/MCHitCollection.h",
"lardata/MCBase/MCHit.h" => "lardatalite/MCBase/MCHit.h",
"lardata/MCBase/MCLimits.h" => "lardatalite/MCBase/MCLimits.h",
"lardata/MCBase/MCShower.h" => "lardatalite/MCBase/MCShower.h",
"lardata/MCBase/MCStep.h" => "lardatalite/MCBase/MCStep.h",
"lardata/MCBase/MCTrack.h" => "lardatalite/MCBase/MCTrack.h",
"lardata/MCBase/MCWireCollection.h" => "lardatalite/MCBase/MCWireCollection.h",
"lardata/MCBase/MCWire.h" => "lardatalite/MCBase/MCWire.h",
"lardata/OpticalDetectorData/ChannelDataGroup.h" => "lardatalite/OpticalDetectorData/ChannelDataGroup.h",
"lardata/OpticalDetectorData/ChannelData.h" => "lardatalite/OpticalDetectorData/ChannelData.h",
"lardata/OpticalDetectorData/FIFOChannel.h" => "lardatalite/OpticalDetectorData/FIFOChannel.h",
"lardata/OpticalDetectorData/OpticalRawDigit.h" => "lardatalite/OpticalDetectorData/OpticalRawDigit.h",
"lardata/OpticalDetectorData/OpticalTypes.h" => "lardatalite/OpticalDetectorData/OpticalTypes.h",
"lardata/OpticalDetectorData/PMTTrigger.h" => "lardatalite/OpticalDetectorData/PMTTrigger.h",
"lardata/RawData/AuxDetDigit.h" => "lardatalite/RawData/AuxDetDigit.h",
"lardata/RawData/BeamInfo.h" => "lardatalite/RawData/BeamInfo.h",
"lardata/RawData/DAQHeader.h" => "lardatalite/RawData/DAQHeader.h",
"lardata/RawData/ExternalTrigger.h" => "lardatalite/RawData/ExternalTrigger.h",
"lardata/RawData/OpDetPulse.h" => "lardatalite/RawData/OpDetPulse.h",
"lardata/RawData/OpDetWaveform.h" => "lardatalite/RawData/OpDetWaveform.h",
"lardata/RawData/RawDigit.h" => "lardatalite/RawData/RawDigit.h",
"lardata/RawData/raw.h" => "lardatalite/RawData/raw.h",
"lardata/RawData/TriggerData.h" => "lardatalite/RawData/TriggerData.h",
"lardata/RecoBase/Cluster.h" => "lardatalite/RecoBase/Cluster.h",
"lardata/RecoBase/EndPoint2D.h" => "lardatalite/RecoBase/EndPoint2D.h",
"lardata/RecoBase/Event.h" => "lardatalite/RecoBase/Event.h",
"lardata/RecoBase/Hit.h" => "lardatalite/RecoBase/Hit.h",
"lardata/RecoBase/OpFlash.h" => "lardatalite/RecoBase/OpFlash.h",
"lardata/RecoBase/OpHit.h" => "lardatalite/RecoBase/OpHit.h",
"lardata/RecoBase/PCAxis.h" => "lardatalite/RecoBase/PCAxis.h",
"lardata/RecoBase/PFParticle.h" => "lardatalite/RecoBase/PFParticle.h",
"lardata/RecoBase/Seed.h" => "lardatalite/RecoBase/Seed.h",
"lardata/RecoBase/Shower.h" => "lardatalite/RecoBase/Shower.h",
"lardata/RecoBase/SpacePoint.h" => "lardatalite/RecoBase/SpacePoint.h",
"lardata/RecoBase/Track.h" => "lardatalite/RecoBase/Track.h",
"lardata/RecoBase/TrackHitMeta.h" => "lardatalite/RecoBase/TrackHitMeta.h",
"lardata/RecoBase/Vertex.h" => "lardatalite/RecoBase/Vertex.h",
"lardata/RecoBase/Wire.h" => "lardatalite/RecoBase/Wire.h",
                            );

      }
foreach my $inc (sort keys %inc_translations) {
  s&^(\s*#include\s+["<])\Q$inc\E([">].*)$&${1}$inc_translations{$inc}${2}& and last;
}

### Local Variables:
### mode: cperl
### End:
