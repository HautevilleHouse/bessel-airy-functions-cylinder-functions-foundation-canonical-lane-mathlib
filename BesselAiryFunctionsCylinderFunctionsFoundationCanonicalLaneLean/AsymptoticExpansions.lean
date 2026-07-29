import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

structure AsymptoticExpansionPackage where
  functionType : Type u
  largeArgumentExpansion : Prop
  smallArgumentExpansion : Prop
  uniformExpansion : Prop
  stokesPhenomenon : Prop

structure AsymptoticExpansionEvidence (A : AsymptoticExpansionPackage) where
  largeArgumentExpansionClosed : A.largeArgumentExpansion
  smallArgumentExpansionClosed : A.smallArgumentExpansion
  uniformExpansionClosed : A.uniformExpansion
  stokesPhenomenonClosed : A.stokesPhenomenon

def AsymptoticExpansionClosed (A : AsymptoticExpansionPackage) : Prop :=
  A.largeArgumentExpansion ∧ A.smallArgumentExpansion ∧ A.uniformExpansion ∧ A.stokesPhenomenon

theorem asymptotic_expansion_closed_from_evidence (A : AsymptoticExpansionPackage) (E : AsymptoticExpansionEvidence A) :
    AsymptoticExpansionClosed A := by
  exact And.intro E.largeArgumentExpansionClosed
    (And.intro E.smallArgumentExpansionClosed
      (And.intro E.uniformExpansionClosed E.stokesPhenomenonClosed))

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse