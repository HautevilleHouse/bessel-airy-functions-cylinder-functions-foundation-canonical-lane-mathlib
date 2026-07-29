import canonicalLaneMathlib.AdmissibleClass
import BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

structure BesselEquationPackage where
  order : ℕ
  independentSolutions : Prop
  wronskianNonzero : Prop
  recurrenceRelations : Prop

structure BesselEquationEvidence (B : BesselEquationPackage) where
  independentSolutionsClosed : B.independentSolutions
  wronskianNonzeroClosed : B.wronskianNonzero
  recurrenceRelationsClosed : B.recurrenceRelations

def BesselEquationClosed (B : BesselEquationPackage) : Prop :=
  B.independentSolutions ∧ B.wronskianNonzero ∧ B.recurrenceRelations

theorem bessel_equation_closed_from_evidence (B : BesselEquationPackage) (E : BesselEquationEvidence B) :
    BesselEquationClosed B := by
  exact And.intro E.independentSolutionsClosed
    (And.intro E.wronskianNonzeroClosed E.recurrenceRelationsClosed)

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse