# String Calculator

### String Calculator TDD

1. Create a simple String calculator with a method signature like this:
```
 Calculator.add("") -> 0
 Calculator.add("1") -> 1
 Calculator.add("1,5") -> 6
```

2. Allow the add method to handle any amount of numbers.
```
Calculator.add("#{1000022220221113334},#{100002222022111}") -> 1000122222443135445
```

3. Allow the add method to handle new lines between numbers (instead of commas)
```
Calculator.add("1\n2,3") -> 6
```

4. Support different delimiters: To change the delimiter, the beginning of the string will contain a separate line that looks like this: "//[delimiter]\n[numbers…]"
```
Calculator.add("1\n2,3") -> 6
```

5. Calling add with a negative number will throw an exception: "negative numbers not allowed <negative_number>".
```
Calculator.add("-1,2") -> `check_negative_numbers': Negatives not allowed: -1 (RuntimeError)
```