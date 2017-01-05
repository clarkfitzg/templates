#!/usr/bin/env julia

x = [3.0, 4.0]

out = 0.0

# TODO: Follow this
# http://docs.julialang.org/en/stable/manual/calling-c-and-fortran-code/#passing-pointers-for-modifying-inputs
ccall((:c_l2norm, "l2norm"), Void
      , (Ptr{Float64}, Ptr{Int}, Ptr{Float64})
      , Ref(x), Ref(length(x)), Ref(out))

print(out, "\n")
