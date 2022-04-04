# Definitions
- [Introduction](#Introduction)
- [Definitions](##Definitions)
- [Writing Effective Tests](##Writing-Effective-Tests)
- [Categorizing Specs](##Categorizing-Specs)
- [RSpec Structure](#RSpec-Structure)
- [References](#References)

# Introduction

RSpec is a "behavior-driven development (BDD) test framework".

As defined in Wikipedia, "behavior-driven development (BDD) is an agile software development process that encourages collaboration among developers, quality assurance testers, and customer representatives in a software project. It encourages teams to use conversation and concrete examples to formalize a shared understanding of how the application should behave."

[Behavior-Driven Development](https://en.wikipedia.org/wiki/Behavior-driven_development)

## Definitions
> A test validates that a bit of code is working properly.

> A spec describes the desired behavior of a bit of code.

> An example shows how a particular API is intended to be used.

## Writing Effective Tests
> A good test will provide at least one of these benefits:
> 
> - Design guidance: helping you distill all those fantastic 
> ideas in your head into running, maintainable code
>
> - Safety net: finding errors in your code before your customers do
>
> - Documentation: capturing the behavior of a working system to help its maintainers”

## Categorizing Specs
> Acceptance specs describe a feature in an end-to-end, black-box style that exercises the entire system.
> 
> - hard to write, comparatively brittle, and slow
> 
> - useful for large-scale refactoring

> Unit specs focus on individual units of code—often as small as a single object or method.

> Code that interacts with an external service—such as a database or third-party REST API—should have an integration spec.

# RSpec Structure

> “The three methods—describe, it, and expect—are the core APIs of RSpec.”

## Rspec.describe
> The RSpec.describe block creates an example group. An example group defines what you’re testing—in this case. 

## Hooks / Helper Methods / let

> RSpec hooks run automatically at specific times during testing.
>
> - The setup code is shared across specs, but the individual instance is not. Every example gets its own instance.
> 
> - Drawbacks:
> 
>   -  If you misspell @instance, Ruby will silently return nil instead of aborting with a failure right away.
>
>   - To refactor your specs to use instance variables, you’ve had to go through the entire file and replace instance with @instance.
>
>   - When you initialize an instance variable in a before hook, you pay the cost of that setup time for all the examples in the group, even if some of them never use the instance variable.

> Helper methods are regular Ruby methods; you control when these run.

> RSpec’s let construct initializes data on demand.

## Context

> This method groups a set of examples and their setup code together with a common description.

> We tend to use context for phrases that modify the object we’re testing.

> If you find yourself running the same subset of specs repeatedly, you can save time by marking them as focused. To do so, simply add an f to the beginning of the RSpec method name:
> 
>  - context becomes fcontext
>
>  - it becomes fit
>
>  - describe becomes fdescribe”

## Marking Incomplete Work

> RSpec provides the pending method for this purpose. 

> You can mark a spec as pending by adding the word pending anywhere inside the spec body, along with an explanation of why the test shouldn’t pass yet. 

> The location matters; any lines before the pending call will still be expected to pass.

# Commands

To run RSpec using `bundler`:

```
bundle exec rspec --help
```

To identify slow specs (e.g. two):

```
bundle exec rspec --profile 2
```

To re-run a specifc test(s):

```
bundle exec rspec name_of_spec.rb
bundle exec rspec -e name_of_example
bundle exec rspec --only-failures
```

# References

- “Effective Testing with RSpec 3 Build Ruby Apps with Confidence by Myron Marston, Ian Dees”
- [Getting Started with RSpec](https://semaphoreci.com/community/tutorials/getting-started-with-rspec)
- [List of Built-In RSpec Methods](https://rspec.info/documentation/3.5/rspec-expectations/method_list.html)
- [Setting up and Using RSpec](https://medium.com/@tyler_brewer2/setting-up-and-using-rspec-b170b64bb89)
