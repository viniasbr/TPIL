-- Book Examples

#check fun (x : Nat) => x + 5
-- λ and fun mean the same thing
#check λ (x : Nat) => x + 5

#check λ x => x+5

#eval (λ x : Nat => x + 5) 10


#check λ x : Nat => λ y : Bool => if not y then x + 1 else x + 2

#check λ (x: Nat) (y: Bool) => if not y then x + 1 else x + 2

#check λ x y => if not y then x + 1 else x + 2

-- My code

#check (λ x y => if not y then x + 1 else x + 2) 7
#eval (λ x y => if not y then x + 1 else x + 2) 7 false
#eval (λ x y => if not y then x + 1 else x + 2) 7 true

-- Book Examples

def f (n : Nat) : String := toString n
def g (s : String) : Bool := s.length > 0

#check λ x : Nat => x

#check λ x : Nat => true

#check λ x => g (f x)

#check λ (g : String → Bool) (f: Nat → String) (x : Nat) => g (f x)
