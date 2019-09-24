using Test
using GtkExtensions, Gtk

@testset "TextIter" begin

    import Gtk: GtkTextIter, mutable

    w = GtkWindow()
    b = GtkTextBuffer()
    b.text[String] = "test"
    v = GtkTextView(b)

    push!(w,v)
    showall(w)

    it = GtkTextIter(b,1)
end
