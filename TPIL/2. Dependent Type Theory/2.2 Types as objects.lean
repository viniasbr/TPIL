#check Nat
#check Bool
#check Nat → Bool
#check Nat × Bool
#check Nat → Nat
#check Nat × Nat → Nat
#check Nat → Nat → Nat
#check Nat → (Nat → Nat)
#check Nat → Nat → Bool
#check (Nat → Nat) → Nat

def α : Type := Nat
def β : Type := Bool
def F : Type -> Type := List
def G : Type -> Type -> Type := Prod

#check α
#check F α -- A type List of α, with α being a type.
#check G α -- A function that returns the type of a Cartesian product of α with another type
#check G α β -- The type α × β itself, with α and β being types (namely, Nat and Bool)
#check G α Nat -- The type α × ℕ, with α being a type


#check Prod α β -- α × β : Type
#check α × β -- α × β : Type
#check Prod Nat Nat -- ℕ × ℕ : Type
#check Nat × Nat -- ℕ × ℕ : Type

#check List α
#check List Nat

#check Type
#check Type 1
#check Type 2
#check Type 3
#check Type 4

#check Type 0

#check List

#check Prod

universe u

def F' (α : Type u) : Type u := Prod α α

#check F'

def F''.{z} (α: Type z) : Type z := Prod α α

#check F''
