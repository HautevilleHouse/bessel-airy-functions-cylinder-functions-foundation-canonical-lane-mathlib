import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

structure AiryFunctionPackage where
  argument : ℂ
  type : String -- "Ai" or "Bi"
  domain : Set ℂ
  seriesExpansion : ℂ → ℂ
  asymptoticExpansion : Prop
  differentialEquation : Prop

structure AiryFunctionEvidence (A : AiryFunctionPackage) where
  asymptoticExpansionClosed : A.asymptoticExpansion
  differentialEquationClosed : A.differentialEquation

def AiryFunctionClosed (A : AiryFunctionPackage) : Prop :=
  A.asymptoticExpansion ∧ A.differentialEquation

theorem airy_function_closed_from_evidence (A : AiryFunctionPackage)
    (E : AiryFunctionEvidence A) : AiryFunctionClosed A := by
  exact And.intro E.asymptoticExpansionClosed E.differentialEquationClosed

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse