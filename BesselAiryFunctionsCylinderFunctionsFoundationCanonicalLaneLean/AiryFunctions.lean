import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

structure AiryFunctionPackage where
  argumentDomain : Type u
  ai : argumentDomain → ℝ
  bi : argumentDomain → ℝ
  differentialEquation : Prop
  asymptoticBehavior : Prop
  zeros : Prop

structure AiryFunctionEvidence (A : AiryFunctionPackage) where
  differentialEquationClosed : A.differentialEquation
  asymptoticBehaviorClosed : A.asymptoticBehavior
  zerosClosed : A.zeros

def AiryFunctionClosed (A : AiryFunctionPackage) : Prop :=
  A.differentialEquation ∧ A.asymptoticBehavior ∧ A.zeros

theorem airy_function_closed_from_evidence (A : AiryFunctionPackage) (E : AiryFunctionEvidence A) :
    AiryFunctionClosed A := by
  exact And.intro E.differentialEquationClosed
    (And.intro E.asymptoticBehaviorClosed E.zerosClosed)

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse