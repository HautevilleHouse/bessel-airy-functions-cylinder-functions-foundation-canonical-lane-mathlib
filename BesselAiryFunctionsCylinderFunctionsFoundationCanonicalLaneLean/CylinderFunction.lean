import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

structure CylinderFunctionPackage where
  parameter : ℂ
  variable : ℂ
  domain : Set ℂ
  integralRepresentation : ℂ → ℂ
  contiguityRelation : Prop
  differentialEquation : Prop

structure CylinderFunctionEvidence (C : CylinderFunctionPackage) where
  contiguityRelationClosed : C.contiguityRelation
  differentialEquationClosed : C.differentialEquation

def CylinderFunctionClosed (C : CylinderFunctionPackage) : Prop :=
  C.contiguityRelation ∧ C.differentialEquation

theorem cylinder_function_closed_from_evidence (C : CylinderFunctionPackage)
    (E : CylinderFunctionEvidence C) : CylinderFunctionClosed C := by
  exact And.intro E.contiguityRelationClosed E.differentialEquationClosed

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse