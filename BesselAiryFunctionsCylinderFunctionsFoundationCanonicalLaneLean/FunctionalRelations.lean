import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

structure FunctionalRelationsPackage where
  functionType : Type u
  recurrenceRelations : Prop
  differentialRelations : Prop
  integralRepresentations : Prop
  wronskianRelations : Prop

structure FunctionalRelationsEvidence (F : FunctionalRelationsPackage) where
  recurrenceRelationsClosed : F.recurrenceRelations
  differentialRelationsClosed : F.differentialRelations
  integralRepresentationsClosed : F.integralRepresentations
  wronskianRelationsClosed : F.wronskianRelations

def FunctionalRelationsClosed (F : FunctionalRelationsPackage) : Prop :=
  F.recurrenceRelations ∧ F.differentialRelations ∧ F.integralRepresentations ∧ F.wronskianRelations

theorem functional_relations_closed_from_evidence (F : FunctionalRelationsPackage) (E : FunctionalRelationsEvidence F) :
    FunctionalRelationsClosed F := by
  exact And.intro E.recurrenceRelationsClosed
    (And.intro E.differentialRelationsClosed
      (And.intro E.integralRepresentationsClosed E.wronskianRelationsClosed))

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse