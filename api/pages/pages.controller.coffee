_ = require('lodash')

exports.test = (req, res) ->
  login = req.body.login
  password = req.body.password
  console.log login
  console.log password
  res.send {foo: "success"}