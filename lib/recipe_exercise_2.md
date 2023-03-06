Describe the Problem:
As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

Design the Method Signature:
# 'grammer' checks that text starts with a capital letter and ends in suitable punctuation
# Input arg is a string of words.

check first word has capital letter
check last entry is .?

# method returns a string telling user if it's correct grammer or not.

Create Examples as Tests:
#Examples

grammer("") => "Nothing provided!"
grammer("Hello world!) => "Correct grammer."
grammer("hello world.) => Incorrect grammer no capital letter at start of sentence"
grammer(Hello world) => "Incorrect grammer no punctuation at the end."