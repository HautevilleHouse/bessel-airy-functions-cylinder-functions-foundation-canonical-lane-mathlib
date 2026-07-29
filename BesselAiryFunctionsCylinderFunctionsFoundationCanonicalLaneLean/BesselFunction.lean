import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

structure BesselFunctionPackage where
  order : ℂ
  type : String -- "first_kind" or "second_kind"
  domain : Set ℂ
  seriesExpansion : ℂ → ℂ
  recurrenceRelation : Prop
  differentialEquation : Prop

structure BesselFunctionEvidence (B : BesselFunctionPackage) where
  recurrenceRelationClosed : B.recurrenceRelation
  differentialEquationClosed : B.differentialEquation

def BesselFunctionClosed (B : BesselFunctionPackage) : Prop :=
  B.recurrenceRelation ∧ B.differentialEquation

theorem bessel_function_closed_from_evidence (B : BesselFunctionPackage)
    (E : BesselFunctionEvidence B) : BesselFunctionClosed B := by
  exact And.intro E.recurrenceRelationClosed E.differentialEquationClosed

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse