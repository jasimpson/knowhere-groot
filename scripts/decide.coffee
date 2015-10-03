# Description:
#   Decides between two or more options at random.
#
# Commands:
#   decide|choose|pick( between)(:) <option 1> and|or <option 2> (and|or <option #> ...)
#
# Author:
#   Michi Kono

module.exports = (robot) ->
  robot.hear /((decide|choose|pick)(\s*between)?:?)\s*([^\s]+\s+(or|and)\s+.*?$)/i, (msg) ->
    msg.send 'Let\'s go with ' + msg.random msg.match[4].split(' ' + msg.match[5] + ' ').map((s) -> s.replace(/^\s+|\s+$/g, '').replace(/\b[^\w]+$|^[^\w]+\b/i, '')).filter((x) -> !!x)
