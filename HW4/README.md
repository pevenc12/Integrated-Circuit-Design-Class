# Calculator
This is a gate-level calculator circuit that computes the Discriminant of Quadratic Equation, D= B^2 - 4AC. There are three inputs, A with 4 bits, B with 7 bits, and C with 6 bits.
And there is one output D with 15 bits. All the inputs and output are signed integers and all the inputs and outputs are in the form of 2's complement.
Also it is designed piplined.

# Flow Diagram
https://imgur.com/ttYjjAI

# Idea
For the multiplication part, this work uses partial products to store the carry-in bit after every addition.