nconf = require 'nconf'
_ = require 'lodash'
path = require 'path'
crypto = require('crypto')

module.exports.checkUrl = (req, res, next) ->
  date = req.query.date
  pid = req.query.pid
  token = req.query.token
  myToken = md5(date, pid)
  console.log myToken
  if token == myToken
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