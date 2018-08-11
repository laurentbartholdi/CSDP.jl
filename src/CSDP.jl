module CSDP

using Compat
using Compat.LinearAlgebra # For Diagonal
using Compat.SparseArrays # For SparseMatrixCSC

# Try to load the binary dependency
if isfile(joinpath(dirname(@__FILE__),"..","deps","deps.jl"))
    include("../deps/deps.jl")
else
    error("CSDP not properly installed. Please run Pkg.build(\"CSDP\")")
end

export Blockmatrix

include("blockmat.h.jl")
include("blockmat.jl")
include("declarations.h.jl")
include("declarations.jl")
include("debug-mat.jl")
include("options.jl")
include("MOIWrapper.jl")
include("MPBWrapper.jl")

end # module
