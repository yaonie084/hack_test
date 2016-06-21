
var _ = require('lodash');
var request = require('request');

exports.test = function(req, res) {
  tripUser = req.body.tripUser;
  location = req.body.location;

  console.log(req.body);

  if(tripUser == '张三') {
    result = {
      success: true
    };
  }else {
    result = {
      success: false
    }
  }

  res.send(result);

};