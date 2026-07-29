import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

structure AiryFunctionPackage where
  airyDifferentialEquation : Prop
  wronskianRelation : Prop
  asymptoticExpansions : Prop
  integralRepresentations : Prop

structure AiryFunctionEvidence (A : AiryFunctionPackage) where
  airyDifferentialEquationClosed : A.airyDifferentialEquation
  wronskianRelationClosed : A.wronskianRelation
  asymptoticExpansionsClosed : A.asymptoticExpansions
  integralRepresentationsClosed : A.integralRepresentations

def AiryFunctionClosed (A : AiryFunctionPackage) : Prop :=
  A.airyDifferentialEquation ∧ A.wronskianRelation ∧
  A.asymptoticExpansions ∧ A.integralRepresentations

theorem airy_function_closed_from_evidence
    (A : AiryFunctionPackage) (E : AiryFunctionEvidence A) :
    AiryFunctionClosed A := by
  exact And.intro E.airyDifferentialEquationClosed
    (And.intro E.wronskianRelationClosed
      (And.intro E.asymptoticExpansionsClosed E.integralRepresentationsClosed))

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse