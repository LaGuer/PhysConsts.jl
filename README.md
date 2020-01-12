# PhysConsts

[![Build Status](https://travis-ci.org/laguer/PhysConsts.jl.svg?branch=master)](https://travis-ci.org/laguer/PhysConsts.jl)
[![Build status](https://ci.appveyor.com/api/projects/status/ohphqhlx028mdjdb?svg=true)](https://ci.appveyor.com/project/laguer/physconsts-jl)
[![Coverage Status](https://coveralls.io/repos/laguer/PhysConsts.jl/badge.svg?branch=master&service=github)](https://coveralls.io/laguer/PhysConsts.jl?branch=master)
[![codecov](https://codecov.io/gh/LaGuer/PhysConsts.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/LaGuer/PhysConsts.jl)

Physical Constants updated with 26th CGPM BIPM data anticipating CODATA2019 release scheduled in May 2019.


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

### Updated universal constants and particle properties ( thanks to Jean Maruani / Francis Sanchez)
* [The_Dirac_Electron_From_Quantum_Chemistry_to_Holistic_Cosmology @ researchgate](https://www.researchgate.net/publication/287808070_The_Dirac_Electron_From_Quantum_Chemistry_to_Holistic_Cosmology)
* [Dirac_Electron_From_Quantum_Chemistry_to_Holistic_Cosmology @ Wiley](https://onlinelibrary.wiley.com/doi/abs/10.1002/jccs.201500374)

| Symbol | Name                       | Formula                  | Dimension        | Value            | Unit             |
| ------ | ----                       | -----                    | ----             | -----            | ----             |
| `G`    | Sz constant of gravitation | F_gr=Gmm'/d^2            | M^-1L^3T^-2      | 6.675453818e-11  | `m^3 kg^-1 s^-2` |
| `k_e`  | Electrostatic constant     |     k_e.e^2 / ħc         | dimensionless    | 8.98e-9          | `F^-1.m`         |
| `α`    | Fine structure constant    | a=α^-1  F_el=ħc/αd^2     | dimensionless    | (137.0359991)^-1 | `pure number`    |
| `δ_e`  | Electron grav invariant    |                          | dimensionless    | 1.7517e-45       | `pure number`    |
| `δ_n`  | Nucleon grav invariant     |                          | dimensionless    | 5.9138e-39       | `pure number`    |
| `δ_X`  | Cross grav invariant       |                          | dimensionless    | 1.6917e-38       | `pure number`    |
| `C`    | Gravitational velocity     |                          | L.T^-1           | 3.6993e44        | `m s^-1`         |
| `R_U`  | Universe Hubble radius     | R_U=2G.M_U/c)^2          | L                | 1.3065e26        | `m`              |
| `G_F`  | Fermi Constant             | G_F=ħ^3/cm_F^2           |   ML^5T^-2       | 8.7936e52        | `J.m^3`          |
| `a_G`  |Gravitation Sanchez Constant| a_G=ħc/Gm_pm_H           | dimensionless    | 1.6919335e38     | `pure number`    |
| `M_U`  | Universe Sanchez Mass      | M_U=(ħc/G)^2/m_e.m_p.m_n | M                | 8.7936e52        | `kg`             |
| `r_0`  | Bare Hydrogen Bohr radius  |    aħ/m_ec               | L                | 5.291772103e-11  | `m`              |
| `H`    |Hydrogen-electron mass ratio|    m_H/m_e               | dimensionless    | 1837.152645      | `m_e`            |
| `p`    |Proton-electron mass ratio  |    m_p/m_e               | dimensionless    | 1836.152672      | `m_e`            |
| `n`    |Neutron-electron mass ratio |    m_n/m_e               | dimensionless    | 1838.683659      | `m_e`            |
| `μ-`   |Muon-electron mass ratio    |    m_m/m_e               | dimensionless    | 206.7682869      | `m_e`            |
| `τ-`   |Tau-electron mass ratio     |    m_t/m_e               | dimensionless    | 3477.441701      | `m_e`            |

## Author(s)

**[QuantumBFS](https://github.com/QuantumBFS/)**

**[LaGuer](https://github.com/LaGuer/)**
