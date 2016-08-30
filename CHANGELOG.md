# Overview

## 0.1.6

* Fixes autoloading for ResolverSystem

## 0.1.5

* Uses controller's lookup context to find partials.

## 0.1.4

* Support for Rails 5.0

## 0.1.3

* ?!?

## 0.1.2

### New Features

* Use google analytics universal (Chamnap Chhorn)

* Render liquid template as html_safe by default (Dan Kubb)

## 0.1.1

### New Features

* Add `bootstrap_pagination` filter. (Radin Reth)

* Allow `translate` filter with interpolation. (Tomasz Stachewicz, Chamnap Chhorn)

* Support `rails` 4.2 and `ruby` 2.2. (Chamnap Chhorn)

* Support `scope` on collection drop. (Radin Reth)


### Resolved Issues

* Add `rel="prev"` and `rel="next"` to `default_pagination` filter. (Radin Reth)

* Fix `content_for` and `yield` tag on `rails` 3.2. (Chamnap Chhorn)

* \#4 Makes partial template work in namespaced controller. (Tomasz Stachewicz)

* `truncate` filter now forwards to the standard filters. (Radin Reth)

## 0.1.0

* Initial Release