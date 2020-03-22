---
title:  "An introduction to the RISC-V multicycle architecture"
categories: [riscv, modelsim, engineering]
comments: true
published: false

sidebar:
  nav: docs
---

There comes a time in the life of every computer engineer where they must dive deep into the inner workings of a computer, and understand how every little bit fits together; what drives what, how an instruction works, how values are changed and exchanged between registers, and the best way to learn all that is by _doing_ it.

In my Hardware Infrastructure class, I was asked to implement the RISC-V architecture from scratch.  
Thing is, the RISC-V is still quite new. While it's quite easy to find information on the web about the MIPS architecture (and even fully working assemblers), good beginner info about the RISC-V is still very hard to come by.

So I decided to create this little documentation, with everything I learned while building a working RISC-V implementation from scratch in SystemVerilog, along with a few tools I've developed to help run the projects. I hope this small compemdium is useful for someone with similar projects in the future.

This documentation is supposed to be a quick reference, and provide just enough info to point you in the right directions. Please take your time to do your own research too!  
<sup>I'm only a student, so some info may be missing or incorrect. If you find any errors, please contact me</sup>
{:.warning}

# The RISC-V multicycle architecture

The following diagram represents a multicycle implementation of the RISC-V. By clicking the arrow, you'll also see a basic state machine for a small set of instructions (`sd`, `ld`, `beq` and `add`).

<iframe frameborder="0" style="width:100%;height:500px;" src="https://www.draw.io/?lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=Simple%20riscv#Uhttps%3A%2F%2Fdrive.google.com%2Fuc%3Fid%3D1030ZfwJP8PCnHmtPKs_WeDuXzgnQBDfK%26export%3Ddownload"></iframe>

If you're familiar with the MIPS architecture, you'll see it's very similar in a lot of aspects. The main difference here is how the instruction register splits the instructions, to account for RISC-V's different instruction encoding