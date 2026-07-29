import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

structure SpecialValuesPackage where
  functionType : Type u
  zeros : Prop
  orthogonality : Prop
  normalization : Prop
  specialValuesAtPoints : Prop

structure SpecialValuesEvidence (S : SpecialValuesPackage) where
  zerosClosed : S.zeros
  orthogonalityClosed : S.orthogonality
  normalizationClosed : S.normalization
  specialValuesAtPointsClosed : S.specialValuesAtPoints

def SpecialValuesClosed (S : SpecialValuesPackage) : Prop :=
  S.zeros ∧ S.orthogonality ∧ S.normalization ∧ S.specialValuesAtPoints

theorem special_values_closed_from_evidence (S : SpecialValuesPackage) (E : SpecialValuesEvidence S) :
    SpecialValuesClosed S := by
  exact And.intro E.zerosClosed
    (And.intro E.orthogonalityClosed
      (And.intro E.normalizationClosed E.specialValuesAtPointsClosed))

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse