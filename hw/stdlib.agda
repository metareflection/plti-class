{-# OPTIONS --type-in-type #-}

module stdlib where

module Primitives where
  import Data.Nat

  ℕ = Data.Nat.ℕ
  zero = Data.Nat.zero
  suc = Data.Nat.suc

  ⋆ = Set

  natElim : (P : ℕ → ⋆) → (P 0) → ((n : ℕ) → P n → P (Data.Nat.suc n)) → (n : ℕ) → P n
  natElim P Pz Ps Data.Nat.zero = Pz
  natElim P Pz Ps (Data.Nat.suc n) = Ps n (natElim P Pz Ps n)

open Primitives

iterNat : (A : ⋆) → A → (A → A) → ℕ → A
iterNat A z s n = natElim (λ _ → A) z (λ _ → s) n

Same : (A : ⋆) → A → A → ⋆
Same = λ (A : ⋆) (a b : A) → (P : A → ⋆) → P a → P b

refl : (A : ⋆) → (x : A) → Same A x x
refl = λ (A : ⋆) (x : A) (P : A → ⋆) (z : P x) → z

sym : (A : ⋆) → (x y : A) → Same A x y → Same A y x
sym = λ (A : ⋆) (x y : A) (SameXY : Same A x y) (P : A → ⋆) →
        SameXY (λ (z₁ : A) → (x₁ : P z₁) → P x)
               (λ (p : P x) → p)

trans : (A : ⋆) → (x y z : A) → Same A x y → Same A y z → Same A x z
trans A x y z pxy pyz P px = pyz P (pxy P px)

_+_ : ℕ → ℕ → ℕ
x + y = iterNat ℕ y suc x

same_under_suc : (x y : ℕ) → Same ℕ x y → Same ℕ (suc x) (suc y)
same_under_suc = λ (x y : ℕ)
                   (z : Same ℕ x y)
                   (P : ℕ → ⋆) →
                   z (λ (z₁ : ℕ) → P (suc z₁))

plus_right_zero : (x : ℕ) → Same ℕ x (x + 0)
plus_right_zero x = natElim (λ (x : ℕ) → Same ℕ x (x + 0))
                            (λ P x → x)
                            (λ n x₁ P → x₁ (λ z → P (suc z)))
                            x

plus_right_suc : (x y : ℕ) → Same ℕ (suc (x + y)) (x + suc y)
plus_right_suc x y = natElim (λ (x : ℕ) → Same ℕ  (suc (x + y)) (x + suc y))
                             (λ P z → z)
                             (λ n z P → z (λ z₁ → P (suc z₁)))
                             x

plus_comm : (x y : ℕ) → Same ℕ (x + y) (y + x)
plus_comm x y = natElim (λ (x : ℕ) → Same ℕ (x + y) (y + x))
                        (plus_right_zero y)
                        (λ (n : ℕ) (p : Same ℕ (n + y) (y + n)) →
                           trans ℕ (suc (n + y))
                                   (suc (y + n))
                                   (y + suc n)
                                   (same_under_suc (n + y) (y + n) p)
                                   (plus_right_suc y n))
                        x
