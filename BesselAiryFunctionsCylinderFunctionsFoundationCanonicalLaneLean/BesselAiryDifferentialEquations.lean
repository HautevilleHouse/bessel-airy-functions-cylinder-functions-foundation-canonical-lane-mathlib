import BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean.MathlibObjects

/-!
# Bessel and Airy Differential Equations Package
-/

namespace HautevilleHouse
namespace BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean

structure BesselDifferentialEquation where
  order : ℕ
  variable : Type u
  besselOperator : (variable → ℝ) → (variable → ℝ)
  equationSatisfied : Prop
  solutionSpaceDimension : ℕ
  regularSolution : Prop
  singularSolution : Prop

def besselEquation (n : ℕ) (x : ℝ) (y : ℝ → ℝ) : Prop :=
  x^2 * deriv (deriv y) x + x * deriv y x + (x^2 - n^2) * y x = 0

structure AiryDifferentialEquation where
  variable : Type u
  airyOperator : (variable → ℝ) → (variable → ℝ)
  equationSatisfied : Prop
  solutionSpaceDimension : ℕ
  airyAiForm : Prop
  airyBiForm : Prop

def airyEquation (x : ℝ) (y : ℝ → ℝ) : Prop :=
  deriv (deriv y) x - x * y x = 0

structure BesselAiryEquationEvidence {B : BesselDifferentialEquation} {A : AiryDifferentialEquation} where
  besselSolved : B.equationSatisfied
  airySolved : A.equationSatisfied

def BesselAiryDifferentialEquationsClosed {B : BesselDifferentialEquation} {A : AiryDifferentialEquation} : Prop :=
  B.equationSatisfied ∧ A.equationSatisfied

theorem bessel_airy_equations_closed_from_evidence {B : BesselDifferentialEquation} {A : AiryDifferentialEquation}
    (E : BesselAiryEquationEvidence B A) : BesselAiryDifferentialEquationsClosed := by
  exact And.intro E.besselSolved E.airySolved

end BesselAiryFunctionsCylinderFunctionsFoundationCanonicalLaneLean
end HautevilleHouse
