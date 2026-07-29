import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

structure BesselFunctionPackage where
  besselOrder : ℕ
  besselDifferentialEquation : Prop
  recurrenceRelations : Prop
  asymptoticExpansions : Prop
  orthogonalityRelations : Prop

structure BesselFunctionEvidence (B : BesselFunctionPackage) where
  besselDifferentialEquationClosed : B.besselDifferentialEquation
  recurrenceRelationsClosed : B.recurrenceRelations
  asymptoticExpansionsClosed : B.asymptoticExpansions
  orthogonalityRelationsClosed : B.orthogonalityRelations

def BesselFunctionClosed (B : BesselFunctionPackage) : Prop :=
  B.besselDifferentialEquation ∧ B.recurrenceRelations ∧
  B.asymptoticExpansions ∧ B.orthogonalityRelations

theorem bessel_function_closed_from_evidence
    (B : BesselFunctionPackage) (E : BesselFunctionEvidence B) :
    BesselFunctionClosed B := by
  exact And.intro E.besselDifferentialEquationClosed
    (And.intro E.recurrenceRelationsClosed
      (And.intro E.asymptoticExpansionsClosed E.orthogonalityRelationsClosed))

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse