__precompile__()

module PhysConsts

using Compat
export DATA

macro __DATA__()
    joinpath(dirname(@__DIR__), "data")
end

mkpath(@__DATA__)
DATA = Dict{String, Any}()

include("DataFile.jl")

# General Type Hierachy
include("Core.jl")
include("NIST.jl")
include("Defined.jl")

# Load Data
DATAFILES = Dict{String, DataFile}()
DATAFILES["NIST"] = DataFile(
    "https://raw.githubusercontent.com/LaGuer/PhysConsts.jl/master/data/srd121_allascii_2018.json",
    @__DATA__,
    "srd121_allascii_2018.json"
)
obtain(DATAFILES["NIST"])

# Constants Alias
include("Universal.jl")
include("Pauli.jl")

end # module
