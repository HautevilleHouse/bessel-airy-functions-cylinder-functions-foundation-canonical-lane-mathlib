import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

structure BesselFunctionPackage where
  order : Type u
  argumentDomain : Type v
  besselJ : order → argumentDomain → ℝ
  besselY : order → argumentDomain → ℝ
  recurrenceRelation : Prop
  differentialEquation : Prop
  generatingFunction : Prop

structure BesselFunctionEvidence (B : BesselFunctionPackage) where
  recurrenceRelationClosed : B.recurrenceRelation
  differentialEquationClosed : B.differentialEquation
  generatingFunctionClosed : B.generatingFunction

def BesselFunctionClosed (B : BesselFunctionPackage) : Prop :=
  B.recurrenceRelation ∧ B.differentialEquation ∧ B.generatingFunction

theorem bessel_function_closed_from_evidence (B : BesselFunctionPackage) (E : BesselFunctionEvidence B) :
    BesselFunctionClosed B := by
  exact And.intro E.recurrenceRelationClosed
    (And.intro E.differentialEquationClosed E.generatingFunctionClosed)

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse