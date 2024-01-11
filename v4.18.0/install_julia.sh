#! /bin/bash

#
# Usage:
# After build the image and then execute this on guest (binding host's $HOME)
#

julia -e 'import Pkg; Pkg.update()'
julia -e 'import Pkg; Pkg.add("Debugger")'
julia -e 'import Pkg; Pkg.add("JuliaInterpreter")'
julia -e 'import Pkg; Pkg.add("DataFrames")'
julia -e 'import Pkg; Pkg.add("DataFramesMeta")'
julia -e 'import Pkg; Pkg.add("TidierData")'

julia -e 'import Pkg; Pkg.add("CSV")'
julia -e 'import Pkg; Pkg.add("HTTP")'
julia -e 'import Pkg; Pkg.add("DocOpt")'

julia -e 'import Pkg; Pkg.add("BioAlignments")'
julia -e 'import Pkg; Pkg.add("BioSequences")'
julia -e 'import Pkg; Pkg.add("XAM")'
julia -e 'import Pkg; Pkg.add("FASTX")'
julia -e 'import Pkg; Pkg.add("Statistics")'
julia -e 'import Pkg; Pkg.add("CodecZlib")'

julia -e 'import Pkg; Pkg.add("PlotlyJS")'
julia -e 'import Pkg; Pkg.add("GR")'
julia -e 'import Pkg; Pkg.add("PGFPlotsX")'
julia -e 'import Pkg; Pkg.add("PlotlyJS")'
julia -e 'import Pkg; Pkg.add("PlotlyBase")'
julia -e 'import Pkg; Pkg.add("PythonPlot")'
julia -e 'import Pkg; Pkg.add("UnicodePlots")'

julia -e 'import Pkg; Pkg.add("InspectDR")'
julia -e 'import Pkg; Pkg.add("Gaston")'
julia -e 'import Pkg; Pkg.add("Gadfly")'
julia -e 'import Pkg; Pkg.add("PyPlot")'

# NOTE: Cannot install
julia -e 'import Pkg; Pkg.add("Plots")'
julia -e 'import Pkg; Pkg.add("StatsPlots")'
julia -e 'import Pkg; Pkg.add("GraphRecipes")'

julia -e 'import Pkg; Pkg.add("PooledArrays")'
