# Gilded Rose Project

### My solution

This project has helped me learn good object oriented design principles.

I have started with codebase for a shop inventory system explored a number of ways to improve its design. In the process I have the opportunity to learnt
what 'well-designed code', encapsulation, Forwarding and Polymorphism means.

The project is now much easier to change and follows OOP principles.  
Gilded rose class doesn't care when items added and new features assigned to update each item.

* the variables and methods are named descriptively to indicate their purpose.
* Reduced the complexity by Duck typing to break Gilded rose class into sub-classes and extracted responsibilities to Single Responsibility.

### Refactoring Tests

Since test have 100% pass and coverage, refactored `spec/gilded_rose_spec.rb` into spec_tests for each item so updates and increments tests more are specific, expectation is clear which also improved readability.
 
### Resources

Sandi Metz has a conference talk that mirrors this task, during which she outlines a great process for refactoring and producing good designs.

[All The Little Things by Sandi Metz](https://www.youtube.com/watch?v=8bZh5LMaSmE)
