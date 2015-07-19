SYMBOLS = '@#$%&*'.split('')
REGEXP = (item)-> new RegExp('.+(' + item + ').+')

disguisedWord = (text)->
  disguised = ''
  i = 0
  while i < text.length
    disguised += SYMBOLS[Math.floor(Math.random() * SYMBOLS.length)]
    i++

  return disguised

parse = (text, list)->
  for n of list
    if text.match REGEXP(list[n])
      textWithDisguisedWord = text.replace(list[n], disguisedWord(text))
      return textWithDisguisedWord

  return text

module.exports = (text, list)->
  parse(text, list)
