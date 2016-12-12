#  How secure is my password?
A web app that collects a user's password and returns how long it would take to brute force.

Live Example: https://fierce-journey-92207.herokuapp.com/

Assumes a desktop computer can make 10 billion password guesses per second.

Assumes there are 33 ascii special characters that can be used in passwords:
!@#$%^&*()-_=+[{ ]};:'"\|`~,<.>/?
(N.B includes the space character)

In example:
the password 'a' would only take 26 guesses (2.6e-9 seconds)
the password 'aB' would take 52^2 guesses (2.704e-7 seconds)
the password 'aB1' would take 62^3 guesses (0.0000238328 seconds)
the password 'aB1!' would take 95^4 guesses (0.0081450625 seconds)
the password 'Cabbag3!'would take 95^8 guesses (663420.431289 seconds)

