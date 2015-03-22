
var _ = require('lodash');

exports.test = function(req, res) {
  var login, password;
  login = req.body.login;
  password = req.body.password;
  console.log(login);
  console.log(password);
  return res.send({
    foo: "success"
  });
};