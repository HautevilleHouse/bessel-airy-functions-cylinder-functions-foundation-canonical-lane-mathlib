import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

structure BesselAiryCylinderWitnessClosed (O : BesselAiryCylinderAdmittedObject) : Prop :=
  witness : O.conclusion

def sourceRepository : String := "BesselAiryFunctionsCylinderFunctionsFoundation"
def sourceDescription : String := "Bessel, Airy, and cylinder functions foundation"
def sourceTheoremBoundary : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := "Remaining classical boundary for Bessel/Airy/Cylinder functions",
  manifoldConstrainedStatement := "Manifold-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "function_constrained",
  carriedRemainder := "Classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse
