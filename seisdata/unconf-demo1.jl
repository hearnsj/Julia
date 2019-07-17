# Atom - run with Script plugin using Ctrl Shift b
using SeisMain
using SeisProcessing
using SeisReconstruction
# using SeisModelling
# using SeisImaging
using SeisPlot
using PyPlot

# SegyToSeis("616_79_PR.SGY","616_79_PR.seis")

SeisHeaderInfo("616_79_PR.seis")

data, extent, headers = SeisRead("616_79_PR.seis") # get the data from the file

#wait_for_key("press any key to continue")

typeof(data)  # 2D array of 32 bit Floats
#surf(data)



data64=convert(Array{Float64,2}, data)    # convert to 64 bit Float type

# display a time-space plot
SeisPlotTX(data64 ; title="Demo1 TX Plot", dpi=300)

# display a frequency-wavenumber plot
SeisPlotFK(data64 ; title="Demo1 FK plot", dpi=300)
readline()

exit()
