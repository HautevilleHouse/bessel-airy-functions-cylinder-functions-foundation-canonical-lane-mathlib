import canonicalLaneMathlib.AdmissibleClass
import BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.differentialEquationSatisfied ∧ A.object.asymptoticBehaviorKnown ∧
  A.object.orthogonalityRelationExists ∧ A.object.integralRepresentationExists

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.differentialEquationSatisfied
    (And.intro A.object.asymptoticBehaviorKnown
      (And.intro A.object.orthogonalityRelationExists A.object.integralRepresentationExists))

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse