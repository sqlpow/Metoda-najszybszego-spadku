# Steepest Descent
Implementation of Steepest Descent Algorithm in Julia

Steepest Descent is an algorithm to minimalize function. A typical example of the usage of Steepest Descent is given below.
### Step 1
Run code.

    using ForwardDiff
  
   
        function SteepestDescent(f::Function, x::Integer)
        
            precision = 0.000001
            max_iters = 10000
            previous_step_size = 1
            rate = 0.01 
            iters = 0 


            while previous_step_size > precision && iters < max_iters
                prev_x = x 
                df = ForwardDiff.gradient(z -> f(z[1]), [prev_x])
                x = x - rate *  df[1]
                previous_step_size = abs(x - prev_x) 
                iters = iters+1 
                println("Iteration ", iters)
                println("x value is ", x)
            end
        print("\nThe local minimum occurs at ", x)
        
    end

### Step 2
Declare function you want to optimize.

    f(x) = x^2 + 5x

### Step 3
Use SteepestDescent function. Enter your f(x) and starting point.

    SteepestDescent(f, 3)
  
    Iteration 1
    x value is 2.89
    Iteration 2
    x value is 2.7822
    Iteration 3
    x value is 2.676556
    Iteration 4
    x value is 2.57302488
    Iteration 5
    x value is 2.4715643824
    Iteration 6
    x value is 2.372133094752
    Iteration 7
    x value is 2.2746904328569597
    Iteration 8
    x value is 2.1791966241998204
    Iteration 9
    x value is 2.085612691715824
    Iteration 10
    x value is 1.9939004378815075
    .
    .
    .
    Iteration 573
    x value is -2.499948369769814
    Iteration 574
    x value is -2.4999494023744178
    Iteration 575
    x value is -2.4999504143269293
    Iteration 576
    x value is -2.499951406040391

    The local minimum occurs at -2.499951406040391


