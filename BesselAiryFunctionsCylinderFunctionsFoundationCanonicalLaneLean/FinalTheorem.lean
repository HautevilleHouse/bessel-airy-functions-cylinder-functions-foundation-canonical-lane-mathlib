import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedBesselAiryCylinderClosure (A : AdmissibleClass) : Prop :=
  besselAiryBridgeClosed (A.object : BesselAiryAdmittedObject) ∧ gateClosed A

theorem constrained_bessel_airy_cylinder_endgame (A : AdmissibleClass) :
    ConstrainedBesselAiryCylinderClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse