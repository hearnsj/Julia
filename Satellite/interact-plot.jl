using Plots, Interact

x = collect(-2π:2π/100:2π)

@manipulate for offset in 0:2π/100:2π
   plot(x,@.sin(x + offset))
   end
