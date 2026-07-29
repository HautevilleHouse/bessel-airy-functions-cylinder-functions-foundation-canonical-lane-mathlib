import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

structure BesselAiryAdmittedObject where
  besselPackage : BesselFunctionPackage
  besselEvidence : BesselFunctionEvidence besselPackage
  airyPackage : AiryFunctionPackage
  airyEvidence : AiryFunctionEvidence airyPackage
  cylinderPackage : CylinderFunctionPackage
  cylinderEvidence : CylinderFunctionEvidence cylinderPackage
  asymptoticPackage : AsymptoticExpansionPackage
  asymptoticEvidence : AsymptoticExpansionEvidence asymptoticPackage
  functionalRelationsPackage : FunctionalRelationsPackage
  functionalRelationsEvidence : FunctionalRelationsEvidence functionalRelationsPackage
  specialValuesPackage : SpecialValuesPackage
  specialValuesEvidence : SpecialValuesEvidence specialValuesPackage
  conclusion : BesselFunctionClosed besselPackage ∧ AiryFunctionClosed airyPackage ∧
    CylinderFunctionClosed cylinderPackage ∧ AsymptoticExpansionClosed asymptoticPackage ∧
    FunctionalRelationsClosed functionalRelationsPackage ∧ SpecialValuesClosed specialValuesPackage

def besselAiryBridgeClosed (O : BesselAiryAdmittedObject) : Prop :=
  BesselFunctionClosed O.besselPackage ∧ AiryFunctionClosed O.airyPackage ∧
  CylinderFunctionClosed O.cylinderPackage ∧ AsymptoticExpansionClosed O.asymptoticPackage ∧
  FunctionalRelationsClosed O.functionalRelationsPackage ∧ SpecialValuesClosed O.specialValuesPackage

theorem bridge_from_admissible_class (A : AdmissibleClass) : besselAiryBridgeClosed (A.object : BesselAiryAdmittedObject) := by
  exact (A.object : BesselAiryAdmittedObject).conclusion

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse