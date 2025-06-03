# Experimental!
I ~ "git: github.com/Marcos-cat/iris"

N ← 5
S ← 500

# Boids = [vs xs]
# Rules take in Boids and return the delta velocities

# Parameters

# factor of displacement for Rule 1
p₁ ← 0.0000001 # how much they're attracted to the COM
p₂ ← 100       # how close they have to be to get repelled
p₃ ← 0.0000004 # how much they match velocity

R₁ ← |1 ×p₁-⟜(÷⊃⧻/+)⊣
R₂ ← |1 (
  ?¯/+˙⊞(×⊸(<p₂⌵)-)? ⊣
)
R₃ ← |1 ×p₃-⟜(÷⊃⧻/+)⊢

# ? [v x]
DrawBoid ← (
  ⊃(⤚(-÷₂)0.1 ÷τ-η˜∠°ℂ ⊢|⊣)
  I~Draw~Sector ÷255[203 166 247] 20
)

[(⊚N) (/ℂ×S gen2_N⚂)]

I~Open S_S "Boids"

I~Loop!(
  I~Draw~Background ÷255[30 30 46]

  ⍜⊢+ ⟜(/+[⊃(R₁|R₂|R₃)])
  \+ # update

  dump(⊢)
  ⊸(≡DrawBoid⍉) # Not pervasive :(
)

# [
