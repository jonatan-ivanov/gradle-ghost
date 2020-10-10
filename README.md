# Gradle Ghost
You can't see it but it's there: Gradle Ghost is esentially a set of build scripts that help you to easily build your projects using [Gradle](https://docs.gradle.org/current/userguide/userguide.html)

# What is this exactly?

[![asciicast](https://asciinema.org/a/364593.svg)](https://asciinema.org/a/364593)

It's a tool built on top of [Gradle](https://docs.gradle.org/current/userguide/userguide.html) to help you creating and building simple java-based projects.  
It sets-up everything for you to kick-start your project, you only need an empty directory, you will get:

- The latest [OpenJDK](https://openjdk.java.net/), only if you don't have any Java installation
- The latest [Gradle Wrapper](https://docs.gradle.org/current/userguide/gradle_wrapper.html) and [Gradle](https://docs.gradle.org/current/userguide/userguide.html) if you don't have it
- A [git](https://git-scm.com/) repo (with `.gitignore`)
- An [EditorConfig](https://editorconfig.org/) file
- A HelloWorld app and a unit test
- A few pre-configured Gradle scripts so that you don't need to write them (you can owerride them), you will get
  - A Java project which just works
    - Building jars (executable, sources, javadoc): `grg assemble`
    - Executing the tests: `grg test`
    - Running the project: `grg run`
    - Generating IDE files ([IntelliJ IDEA](https://www.jetbrains.com/idea/)): `grg idea`
    - etc. see: `grg tasks --all`
  - Generated version numbering
  - [Dependenvy locking](https://docs.gradle.org/current/userguide/dependency_locking.html)
  - A couple of basic libraries ([Lombok](https://projectlombok.org/), [Slf4J](http://www.slf4j.org/), [JUnit5](https://junit.org/junit5/))

# Installing

You can install Gradle Ghost via curl:  
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/jonatan-ivanov/gradle-ghost/master/bin/install)"`  
or via wget:  
`sh -c "$(wget -qO- https://raw.githubusercontent.com/jonatan-ivanov/gradle-ghost/master/bin/install)"`  
or via fetch:  
`sh -c "$(fetch -o - https://raw.githubusercontent.com/jonatan-ivanov/gradle-ghost/master/bin/install)"`

(On Windows, you need to run your terminal app as admin)

# Dependencies

Standard Unix Tools, `git`, `curl`

# Testing

You can play with the tool using the `Dockerfile` in the project root:
```sh
docker build . -t gradle-ghost
docker run --rm -it gradle-ghost
```
