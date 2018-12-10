# PhysConsts

[![Build Status](https://travis-ci.org/QuantumBFS/PhysConsts.jl.svg?branch=master)](https://travis-ci.org/QuantumBFS/PhysConsts.jl)
[![Build status](https://ci.appveyor.com/api/projects/status/ohphqhlx028mdjdb?svg=true)](https://ci.appveyor.com/project/Roger-luo/physconsts-jl)
[![Coverage Status](https://coveralls.io/repos/QuantumBFS/PhysConsts.jl/badge.svg?branch=master&service=github)](https://coveralls.io/github/QuantumBFS/PhysConsts.jl?branch=master)
[![codecov.io](http://codecov.io/github/QuantumBFS/PhysConsts.jl/coverage.svg?branch=master)](http://codecov.io/github/QuantumBFS/PhysConsts.jl?branch=master)

Physical Constants


Some useful constants for Julia.

**NOTE** *There is no test for this at the moment, since most of the codes are just bindings. But I will add some unit test in the future versions.*

## Installation

```julia
Pkg.add("PhysConsts")
```

## Usage

Use import to import certain constant's alias input the scope. And you can access some property by the following commands.

```julia-repl
# import electric constant
julia> import PhysConsts.DATA

julia> α.quantity
"fine-structure constant"

julia> α.uncertainty
1.7e-12

julia> α.unit
""

julia> (α.value)^-1
137.03599913815452

```

All the constants overload most of the interface of `Number` and constant types are subtypes of `Number`. Therefore, you can just use them like native numbers

```julia-repl
julia> e * 2
3.2043532416e-19

julia> e + 2
2.0

```

## A list of included constants

All constants are stored in a `Dict` called `DATA`, `Constants` will `export` this dict, you can access it by

```julia-repl
julia> import PhysConsts

julia> PhysConsts.DATA
```

or 

```julia-repl
julia> using PhysConsts

julia> DATA
```

### NIST CODATA Fundamental Physical Constants

`Constants` will download a JSON file from [NIST CODATA]("https://nist.gov/srd/srd_data//srd121_allascii_2014.json") automatically when you install the package. All constants in this JSON file is included. This part can be access from `DATA` by

```julia-repl
julia> Constants.DATA["NIST"]["YOUR CONSTANT NAME"]
```

e.g

```julia-repl
julia> PhysConsts.DATA["NIST"]["standard atmosphere"]
101325.0

```

### Defined Constants

Some constants is defined in theory, like **magnetic constant (vacuum permeability)**, they are also supported, currently we have:

### List of Bindings

- `c`: speed of light in vacuum
- `C`: Gravitational Velocity
- `c0`: speed of light in vacuum
- `G`: Sanchez constant of gravitation
- `Gg`: Newtonian constant of gravitation
- `g`: standard acceleration of gravity
- `h`: Planck constant
- `ħ` : Planck constant over 2 pi
- `e`: atomic unit of charge (use `eu` for mathematical constant `e`)
- `a0` : Bohr radius
- `α` : fine-structure constant
- `a` : electric constant by Francis M. Sanchez
- `k`: Boltzmann constant
- `NA`: Avogadro constant
- `atm`: standard atmosphere
- `μ0`: magnetic constant (vacuum permeability)
- `ε0`: electric constant (vacuum permittivity)


## Author(s)

[QuantumBFS](https://github.com/QuantumBFS/)
[LaGuer](https://github.com/LaGuer/)
