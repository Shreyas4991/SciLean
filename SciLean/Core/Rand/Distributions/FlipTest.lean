import SciLean.Core.Rand.Distributions.Flip
import SciLean.Core.Rand.Tactic
import SciLean.Tactic.ConvInduction

import Mathlib.Tactic.FieldSimp

open MeasureTheory ENNReal BigOperators Finset

namespace SciLean.Prob

variable {R} [RealScalar R] [ToString R]


def test (θ : R) : Rand R := do
  let b ← flip θ
  if b then
    pure 0
  else
    pure (-θ/2)

def test_mean (θ : R) := (test θ).mean
  rewrite_by
    unfold test
    simp[rand_push_E,flip.E]


#eval print_mean_variance (test 0.5) 1000 s!" of {test_mean 0.5}"
#eval print_mean_variance (test 0.7) 1000 s!" of {test_mean 0.7}"
