var sinon = require('sinon');
var chai = require('chai');
require('should')
var expect = chai.expect;

var pages = require('../api/pages/pages.controller');

describe("Routes", function() {
  describe("test", function() {

      it("should respond", function() {
        var req,res,spy;

        req = res = {body: {login: '123', password: '456'}};
        spy = res.send = sinon.spy();
        pages.test(req, res)
        expect(spy.calledOnce).to.equal(true);
      });

      it("should respond a hash", function() {
        var mockReq = {body: {login: '123', password: '456'}};
        var mockRes = {
          send: function(res) {
            res.should.exist;
            res.should.eql({foo: 'success123'});
          }
        };
        pages.test(mockReq, mockRes)
      });

  });
});