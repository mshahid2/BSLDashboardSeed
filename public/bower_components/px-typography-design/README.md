# Typography

The Predix UI Typography module defines styles for basic typography.

## Dependencies

Predix UI's Typography module depends on three other Px modules:

* [px-colors-design](https://github.com/PredixDev/px-colors-design)
* [px-defaults-design](https://github.com/PredixDev/px-defaults-design)
* [px-mixins-design](https://github.com/PredixDev/px-mixins-design)

## Upstream dependency

The Typography module is also an upstream dependency in this meta kit:

* [px-starter-kit-design](https://github.com/PredixDev/px-starter-kit-design)

## Installation

Install this module and its dependencies using bower:

    bower install --save px-typography-design

Once installed, `@import` into your project's Sass file in its **Base** layer:

    @import "px-typography-design/_base.typography.scss";

## Usage

Individual webfont files should be included in a `type` directory. Files must be present in the following filetypes:

* `eot`
* `svg`
* `ttf`
* `woff`

These classes are available to adjust font-weight:

* `.weight--[light|normal|semibold]`

view the full API [here](http://predixdev.github.io/px-typography-design/sassdoc/)
