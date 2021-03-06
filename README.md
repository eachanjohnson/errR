[![Build Status](https://travis-ci.org/eachanjohnson/errR.svg?branch=master)](https://travis-ci.org/eachanjohnson/errR)

# errR
`errR` is a minimal framework which wraps R's `tryCatch` into a system of binary operators to make defensive programming more succinct and readable.

## Installation

Not yet on CRAN. Install using `devtools`:

`devtools::install_github('eachanjohnson/errR')`

## Usage
Currently supports two related idioms:

`<code that might produce an error> %except% <recovery code>`

`<code that might produce an error> %except% <function to handle error message>`

In an interactive R session, try:

`stop('This is an error!')`

Then compare with:

`stop('This is an error!') %except% print('Error, but continuing anyway')`

See how this compares to:

`stop('This is an error!') %except% print`

## To do

- Handle warnings
- Add `%finally%` operator
