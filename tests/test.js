var sinon = require('sinon');
var chai = require('chai');
require('should')
var expect = chai.expect;

var pages = require('../api/pages/pages.controller');

describe("Routes", function() {
  describe("test", function() {

      it("should respond a hash", function() {
        var mockReq = {body: {tripUser: '张三', location: '北京'}};
        var mockRes = {
          send: function(res) {

            // console.log(res);

            res.should.exist;
            res.should.eql({success: true});
          }
        };
        pages.test(mockReq, mockRes)
      });

  });
});