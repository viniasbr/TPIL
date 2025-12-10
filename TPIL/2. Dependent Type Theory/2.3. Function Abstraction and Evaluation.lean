set_option linter.unusedVariables false

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

#check fun (α β γ: Type) (g : β → γ) (f: α -> β) (x : α ) => g (f x)

/-This function gets:
    Three types and returns a function (β → γ) → (α → β) → α → γ
      This function gets a function (g: β → γ) and returns a function (α → β) → α → γ
        This function gets a function (f: α → β) and returns a function α → γ
          This function is the composition g(f(x)), which takes x : α and returns g(f(x)) : γ-/

#check (fun x : Nat => x) 1
#check (fun x : Nat => true) 1

#check (fun (α β γ : Type) (u : β → γ) (v : α → β) (x : α) => u (v x)) Nat String Bool g f 0
/-We are creating a function u(v(x)) where u: String → Bool and v: Nat → String
and x: Nat, and then evaluating the case where v is the toString function and
u is the function which checks if a string is not empty, and then applying
(toString 0).length > 0 which should return true, which is type Bool-/

#eval (fun x : Nat => x) 1
#eval (fun x : Nat => true) 1
