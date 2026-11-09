# Sine Series Truncation Error Calculator (MATLAB)

## Overview

This is a MATLAB program to calculate the approximate value of sine using the Taylor Series expansion and determines the truncation error by comparing it with the exact value.

## Mathematical Formula

The Taylor Series expansion of sine is:

sin(x)=x-{(x^3)/3!}+{(x^5)/5!}-{(x^7)/7!}+...

The Truncation Error is calculated using:  
Truncation Error=|Exact Value-Approximate Value|

## Example

**Input:**

```text
Enter the value of x (in radians): 1
Enter the number of terms: 4
```

**Output:**

```text
Exact Value=0.8414709848
Approximate Value=0.8414682540
Truncation Error=0.0000027308
```

## Dry Run

**Given:**
- x = 1
- n = 4
- Initial sum = 0

The loop will execute 4 times (i = 0, 1, 2, 3).

### Iteration 1 (i = 0)

p = 2*0+1 = 1

mod(1,2) = 1

Condition is False, so the else block executes.

part = (1^1)/1! = 1

mod(0,2) = 0

Condition is False, so part remains positive.

sum = 0+1 = 1

**Result: sum = 1**

### Iteration 2 (i = 1)

p = 2*1+1 = 3

mod(3,2) = 1

Condition is False, so the else block executes.

part = (1^3)/3! = 0.166666667

mod(1,2) = 1

Condition is True, so part becomes negative.

part = -0.166666667

sum = 1-0.166666667 = 0.833333333

**Result: sum = 0.833333333**

### Iteration 3 (i = 2)

p = 2*2+1 = 5

mod(5,2) = 1

Condition is False, so the else block executes.

part = (1^5)/5! = 0.008333333

mod(2,2) = 0

Condition is False, so part remains positive.

sum = 0.833333333+0.008333333 = 0.841666667

**Result: sum = 0.841666667**

### Iteration 4 (i = 3)

p = 2*3+1 = 7

mod(7,2) = 1

Condition is False, so the else block executes.

part = (1^7)/7! = 0.000198413

mod(3,2) = 1

Condition is True, so part becomes negative.

part = -0.000198413

sum = 0.841666667-0.000198413 = 0.841468254

**Result: sum = 0.841468254**

### Dry Run Summary Table

| i | p | mod(p,2) | mod(i,2) | part | sum |
|---|---|---|---|---|---|
| 0 | 1 | 1 | 0 | +1.000000000 | 1.000000000 |
| 1 | 3 | 1 | 1 | -0.166666667 | 0.833333333 |
| 2 | 5 | 1 | 0 | +0.008333333 | 0.841666667 |
| 3 | 7 | 1 | 1 | -0.000198413 | 0.841468254 |

### Final Calculation

Exact Value = sin(1) = 0.8414709848

Approximate Value = 0.8414682540

Truncation Error = |0.8414709848-0.8414682540|

**Final Truncation Error = 0.0000027308**
