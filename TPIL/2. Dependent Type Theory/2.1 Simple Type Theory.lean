-- Book Example

/- Define some constants. -/

def m : Nat := 1       -- m is a natural number
def n : Nat := 0
def b1 : Bool := true  -- b1 is a Boolean
def b2 : Bool := false

/- Check their types. -/

#check m
#check n
#check n + 0
#check m * (n + 0)
#check b1
-- "&&" is the Boolean and
#check b1 && b2
-- Boolean or
#check b1 || b2
-- Boolean "true"
#check true

/- Evaluate -/

#eval 5 * 4
#eval m + 2
#eval b1 && b2

-- My Code

def a : Nat := m+1 -- 2
def b : Nat := 7

#eval b / a
#eval b % a
#eval b ^ a

#eval b1 ^^ b2

-- Book Example
#check Nat → Nat
#check Nat -> Nat
#check Nat × Nat
#check Prod Nat Nat
#check Nat → Nat → Nat
#check Nat → (Nat → Nat)
#check Nat × Nat → Nat
#check (Nat → Nat) → Nat

-- My Code

#check (Bool → Nat) × Bool

-- Book Example

#check Nat.succ -- Nat → Nat
#check (0, 1)
#check Nat.add -- Nat → (Nat → Nat)
#check Nat.succ 2 -- Nat
#check Nat.add 3 -- Nat → Nat (f(n) = 3 + n)
#check Nat.add 5 2 -- Nat (f(2) = 5 + 2)
#check (5, 9).1
#check (5, 9).2
#eval Nat.succ 2
#eval Nat.add 5 2
#eval (5, 9).1 -- 1st parameter of (5,9)
#eval (5, 9).2 -- 2nd parameter of (5,9
