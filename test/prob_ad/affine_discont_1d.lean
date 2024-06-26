import SciLean.Core.Integral.Common
import SciLean.Tactic.IfPull

open SciLean MeasureTheory Set

variable
  {R : Type} [RealScalar R] [MeasureSpace R]

set_default_scalar R


example (w : R) (a b c : R) (ha : a ≠ 0) :
    (∂ w':=w,
      ∫' x in Icc (0:R) 1,
        if a * x + b ≤ c * w' then (1:R) else 0)
    =
    sorry := by

  conv =>
    lhs
    integral_deriv

  sorry_proof




variable (w : R) (a b c : R) (ha : a ≠ 0)


/--
info: let ds := ∫' x, (Scalar.abs a)⁻¹ * c ∂(surfaceMeasure 0).restrict ({x | a * x + b - c * w = 0} ∩ Icc 0 1);
ds : R
-/
#guard_msgs in
#check (∂ w':=w,
      ∫' x in Icc (0:R) 1,
        if a * x + b ≤ c * w' then (1:R) else 0) rewrite_by integral_deriv
