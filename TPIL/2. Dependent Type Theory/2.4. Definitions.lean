def double (x : Nat) : Nat := x + x
#eval double 3
def double' : Nat -> Nat := λ x => x+x
def double'' := λ (x: Nat) => x+x
def pi := 3.141592654
def add (x y : Nat) :=
  x+y
#eval add 3 2
def add' (x: Nat) (y: Nat) := x+y
#eval add' (double 3) (7+9)

-- My Code

def add'' : Nat -> (Nat -> Nat) := λ (x: Nat) (y: Nat) => x+y
