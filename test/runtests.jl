using PhysConsts
#using Base.Test

if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

@testset "Data File" begin
    datafile = DataFile("test.url", "directory", "filename")

    @test url(datafile) == "test.url"
    @test dirname(datafile) == abspath("directory")
    @test filename(datafile) == "filename"
    @test filepath(datafile) == joinpath(dirname(datafile), "filename")
end

import PhysConsts: e

@testset "Base" begin
    @test e.quantity == "atomic unit of charge"
    @test e.value == 1.602176634e-19
end
