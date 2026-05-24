# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule MUMPS64_jll
using Base
using Base: UUID
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("MUMPS64")
JLLWrappers.@generate_main_file("MUMPS64", Base.UUID("7e7123fb-46ff-5c22-8640-a7a534ee34a8"))
end  # module MUMPS64_jll
