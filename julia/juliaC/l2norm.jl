#!/usr/bin/env julia

x = [3.0, 4.0]
n = Cint(length(x))
out = Ref{Cdouble}(0)

# TODO: Follow this
# http://docs.julialang.org/en/stable/manual/calling-c-and-fortran-code/#passing-pointers-for-modifying-inputs
# Not obvious how to do this with arrays rather than scalars.
ccall((:c_l2norm, "l2norm"), Void
      , (Ref{Cdouble}, Ref{Cint}, Ref{Cdouble})
      , Ref(x), Ref(n), Ref(out)
      )
      #, Ref(x), Ref(n), Ref(out))

print(out, "\n")
