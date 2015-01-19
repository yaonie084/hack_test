nconf = require 'nconf'
_ = require 'lodash'
path = require 'path'
crypto = require 'crypto'
moment = require 'moment'
redis = require 'redis'
nconf = require 'nconf'
client = redis.createClient(nconf.get("RedisPort"), nconf.get("RedisServer"))
client.select(3)

module.exports.checkUrl = (req, res, next) ->
  date = req.query.date
  pid = req.query.pid
  uuid = req.query.uuid
  token = req.query.token
  myToken = md5(date, pid)
  console.log myToken
  checkRandomStr uuid, pid, (isValid) ->
    console.log '&&&&&&&&&&'
    console.log 'isValid:   ' + isValid
    console.log 'checkTimestamp:   ' + checkTimestamp(date)
    console.log 'token:   ' + myToken
    console.log '&&&&&&&&&'
    if token == myToken && checkTimestamp(date) && isValid
      next()
    else
      res.send 403, error:
          message: 'invalid token'

md5 = (date, pid) ->
  md5Sum = crypto.createHash('md5')
  md5Sum.update date
  md5Sum.update pid
  md5Sum.update '1234'
  md5Sum.digest 'hex'

checkTimestamp = (date_str) ->
  date = moment date_str, "YYYYMMDD|HH:mm"
  now = moment()
  if Math.abs(now-date) < 1800000
    return true
  else
    return false

checkRandomStr = (uuid, str, cb) ->
  client.get uuid, (err, value) ->
    if value == str
      cb false
    else
      client.set uuid, str
      cb true