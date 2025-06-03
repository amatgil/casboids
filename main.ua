# Experimental!
I ~ "git: github.com/Marcos-cat/iris"

N ← 20   # how many boids
S ← 1000 # window size

# Boids = [vs xs]
# Rules take in Boids and return the delta velocities

p₁ ← 0.000001 # how much they're attracted to the COM
p₂ ← ÷10S     # how close they have to be to get repelled
p₃ ← 0.000004 # how much they match velocity
p₄ ← 0.000006 # how much being close influences their velocity

R₁ ← |1 ×p₁-⟜(÷⊃⧻/+)⊣
R₂ ← |1 ×p₄¯/+˙⊞(×⊸(<p₂⌵)-) ⊣
R₃ ← |1 ×p₃-⟜(÷⊃⧻/+)⊢

# ? [v x]
DrawBoid ← (
  ⊃(⤚(-÷₂)0.1 ÷τ-η˜∠°ℂ ⊢|⊣)
  I~Draw~Sector I~Color~Hex "#cba6f7" 20
)

I~Open S_S "Boids"

[(⊚N) (/ℂ×S gen2_N⚂)]
I~Loop!(
  I~Draw~Background I~Color~Hex "#1e1e2e"
  \+ ⍜⊢+ ⟜(/+[⊃(R₁|R₂|R₃)]) # add up rules, update
  ⊸DrawBoid
)
