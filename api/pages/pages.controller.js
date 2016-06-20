
var _ = require('lodash');
var request = require('request');

exports.test = function(req, res) {
  var login, password;
  login = req.body.login;
  password = req.body.password;
  // ans = undefined;
  // console.log(ans.body.ttt);
  // console.log(ans.body);
  // console.log(ans.body);

  request.get('http://app.miaoyiapp.com/pages/test', function(err, res, body){
    if (!err && res.statusCode == 200) {
    console.log(body) // Show the HTML for the Google homepage.
    if (!body)
      return

    }
    else
    {
      console.log('error')
    }
    // console.log(res.body)
  });

  res.send({
    foo: "success"
  });
};