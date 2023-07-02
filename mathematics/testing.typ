#grid(
  columns: (1fr, 1fr),
  align(center)[
    Therese Tungsten \
    Artos Institute \
    #link("mailto:tung@artos.edu")
  ],
  align(center)[
    Dr. John Doe \
    Artos Institute \
    #link("mailto:doe@artos.edu")
  ]
)

#show: rest => columns(2, rest)

= introduction

Greetings people of LaTeX. This is a new language intended to replace LaTeX!

= A Random List

- First
- Second
- Third

OR?

1. First
2. Second
3. Third

= Image

Solarpunk as shown in @solarpunk is a new concept introduced by one of the famous artists whose name I do not recall, sadly.

#figure(
    image("pi-zen.jpg", width: 70%),
    caption: [
        _Solarpunk_ is an alternative perspective on the world compared to the most common _Cyberpunk_!
    ],
) <solarpunk>

= Mathematics

Unlike LaTeX \$ insert math definition here \$ does not make it an inline function only. It's a unified method to write
math functions where Typst is the one determining whether it is an inline function or not! 

$ Q = rho A v + C $

Or with text:
$ Q = rho A v + "time offset" $

Example function showcasing: total displaced soil by glacial flow:
$ 7.32 beta +
  sum_(i=0)^nabla
    (Q_i (a_i - epsilon)) / 2 $

== Vectors
$ v := vec(x_1, x_2, x_3) $

= Cool/Custom Functions

We can also write custom functions which allows us to do whatever the function defines.

Examples:
#let amazed(term, color: blue) = {
  text(color, box[✨ #term ✨])
}

You are #amazed[beautiful]!
I am #amazed(color: purple)[amazed]!

== Critical List!

#let task(body, critical: false) = {
  set text(red) if critical
  [- #body]
}

#task(critical: true)[Food today?]
#task(critical: false)[Work deadline]
