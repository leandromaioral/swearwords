_ = require 'underscore'

SYMBOLS = '@#$%&*'.split('')
REGEXP = (item)-> new RegExp('.+(' + item + ').+')

disguisedWord = (text)->
  disguised = []

  _(text.length).times ->
    disguised.push _.sample(SYMBOLS)

  disguised.join('')

parse = (text, list)->
  for n of list
    if text.match REGEXP(list[n])
      textWithDisguisedWord =
        text.replace(list[n], disguisedWord(text.match(REGEXP(list[n]))[1]))

      return textWithDisguisedWord

  return text

module.exports = (text, list)->
  parse(text, list)
