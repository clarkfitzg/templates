#!/usr/bin/env julia

x = [3.0, 4.0]

out = 0.0

libfile = pwd() * "/l2norm.so"

ccall((:c_l2norm, "l2norm"), Void
      , (Ptr{Float64}, Ptr{Int}, Ptr{Float64})
      , Ref(x), Ref(length(x)), Ref(out))

print(out, "\n")
