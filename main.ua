# Experimental!
I ~ "git: github.com/Marcos-cat/iris"

N ← 5
S ← 500

# Boids = [vs xs]
# Rules take in Boids and return the delta velocities

# Parameters

# factor of displacement for Rule 1
p₁ ← 0.0000001

R₁ ← |1 ⊃(×p₁ -⟜(÷⊃⧻/+)⊣|∠°ℂ)

# ? [v x]
DrawBoid ← (
  A ← |1.2 ⤚(-÷₂)0.1 ÷τ-η ˜∠°ℂ?
  ⊃(A⊢|⊣)
  I~Draw~Sector ÷255[203 166 247] 20
)

⊟₂ 0 /ℂ×S gen2_N⚂

I~Open S_S "Boids"

I~Loop!(
  I~Draw~Background ÷255[30 30 46]

  ⍜⊢+ ⟜(/+⊃[R₁])
  \+ # update

  dump(⊢)
  ⊸(≡DrawBoid⍉)
)

# [
