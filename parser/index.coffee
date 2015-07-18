SYMBOLS = '!@#$%&*'.split('')

parse = (text, list)->
  list.forEach (item)->
    if new RegExp(item).test(text)
      # return text.replace(new RegExp('@'), SYMBOLS[Math.floor(Math.random() * SYMBOLS.length)])
      return 'palavrão'

  return text

module.exports = (text, list)->
  parse(text, list)
