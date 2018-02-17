text = <<TEXT
I love Ruby.
Python is a greate language.
Java and JavaScript are different.
TEXT

p text.scan(/[A-Z][A-Za-z]+/)