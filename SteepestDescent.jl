
function SteepestDescent(df::Function, x::Integer)
        
    precision = 0.000001
    max_iters = 10000
    previous_step_size = 1
    rate = 0.01 
    iters = 0 
         
        
    while previous_step_size > precision && iters < max_iters
        prev_x = x 
        x = x - rate * df(prev_x) 
        previous_step_size = abs(x - prev_x) 
        iters = iters+1 
        println("Iteration ", iters)
        println("x value is ", x)
    end
print("\nThe local minimum occurs at ", x)
end


