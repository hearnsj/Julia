ω = 5.3
r = 1.25
v = ω * r

a = ones(4,4)
a = zeros(4,4)

a = rand(4,4)

b = a .* 90 # range between -90 and +90 degrees

b = a .+ (π/2) # convert to radians

c=sin.(b)

Pkg.add("ArchGDAL") # to read and manipulate GeoTiff satellite data
#http://yeesian.com/ArchGDAL.jl/latest/index.html

Pkg.add("Tensorflow")  #Python deep learning framework

Pkg.add("Knet") # native deep learning

Pkg.add("Flux") # native deep learning
