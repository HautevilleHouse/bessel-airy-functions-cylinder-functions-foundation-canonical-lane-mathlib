import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

structure CylinderFunctionPackage where
  order : Type u
  argumentDomain : Type v
  modifiedBesselI : order → argumentDomain → ℝ
  modifiedBesselK : order → argumentDomain → ℝ
  recurrenceRelation : Prop
  differentialEquation : Prop
  limitingForms : Prop

structure CylinderFunctionEvidence (C : CylinderFunctionPackage) where
  recurrenceRelationClosed : C.recurrenceRelation
  differentialEquationClosed : C.differentialEquation
  limitingFormsClosed : C.limitingForms

def CylinderFunctionClosed (C : CylinderFunctionPackage) : Prop :=
  C.recurrenceRelation ∧ C.differentialEquation ∧ C.limitingForms

theorem cylinder_function_closed_from_evidence (C : CylinderFunctionPackage) (E : CylinderFunctionEvidence C) :
    CylinderFunctionClosed C := by
  exact And.intro E.recurrenceRelationClosed
    (And.intro E.differentialEquationClosed E.limitingFormsClosed)

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse