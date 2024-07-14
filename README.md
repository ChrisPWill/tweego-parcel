# What is this?

Development boilerplate including:

- [tweego](https://www.motoslave.net/tweego) - [Twine](https://twinery.org/)/Twee compiler
- [Parcel](https://parceljs.org/) - a simple low config bundler
- A default image and scss file to demonstrate inclusion of media
- A macro defined in typescript

# Getting started

This was set up using yarn and node v22. If you use nix, the easiest way to
get started is to just run `nix develop` and then `yarn install`.

The rest can be read from `package.json` - for example, `yarn start` compiles
the project to the `/out` directory.

# Note

This is just opinionated enough to get up and running, but there's plenty you
can do to improve/modify things. I felt a little stuck figuring out how to
make a "modern stack" Twine project so I decided to start by solving the
problem for others.

Pull requests are welcome, but keep in mind that I'm trying to leave the
setup open to being customised and avoid taking on too many dependencies.

For instance, I've intentionally left out prettier even though I intend
to use it in my own project, as I believe linting/formatting is trivial
to set up with lots of online examples, and so should be left to the
developer's preference.
