import canonicalLaneMathlib.AdmissibleClass
import BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

structure AiryEquationPackage where
  independentSolutions : Prop
  asymptoticsKnown : Prop
  derivativeRelation : Prop

structure AiryEquationEvidence (A : AiryEquationPackage) where
  independentSolutionsClosed : A.independentSolutions
  asymptoticsKnownClosed : A.asymptoticsKnown
  derivativeRelationClosed : A.derivativeRelation

def AiryEquationClosed (A : AiryEquationPackage) : Prop :=
  A.independentSolutions ∧ A.asymptoticsKnown ∧ A.derivativeRelation

theorem airy_equation_closed_from_evidence (A : AiryEquationPackage) (E : AiryEquationEvidence A) :
    AiryEquationClosed A := by
  exact And.intro E.independentSolutionsClosed
    (And.intro E.asymptoticsKnownClosed E.derivativeRelationClosed)

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse