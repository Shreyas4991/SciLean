import SciLean.Core.Notation
import SciLean.Core.Integral.CIntegral
import SciLean.Core.Integral.ParametricInverse
import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic
import Mathlib.MeasureTheory.Measure.Hausdorff

open MeasureTheory

namespace SciLean


variable
  {R} [RealScalar R]
  {W} [SemiHilbert R W]
  {X} [SemiHilbert R X]
  {Y} [SemiHilbert R Y] [Module ℝ Y]
  {Z} [SemiHilbert R Z] [Module ℝ Z]

set_default_scalar R

/-- Area measure on if `S` is co-dimension one surface. -/
def area' {X} [MeasureSpace X] {S : Set X} : Measure S := sorry

/-- Area measure of surfaces, can this be well defined? -/
def area {X} [MeasureSpace X] : Measure X := sorry

noncomputable
def surfaceMeasure [MeasureSpace X] (d : ℕ) : Measure X := sorry
  -- have m : EMetricSpace X := sorry
  -- have h : (Vec.toUniformSpace R) = PseudoEMetricSpace.toUniformSpace := sorry
  -- have b : @BorelSpace X _ (borel X) := sorry
  -- @Measure.hausdorffMeasure _ _ (borel _) (h ▸ b) d