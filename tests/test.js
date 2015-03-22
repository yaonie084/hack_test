var sinon = require('sinon');
var chai = require('chai');
var expect = chai.expect;

var pages = require('../api/pages/pages.controller');

describe("Routes", function() {
  describe("test", function() {

      it("should respond", function() {
        var req,res,spy;

        req = res = {};
        console.log(sinon.spy());
        spy = res.send = sinon.spy();

        test(req, res);
        expect(spy.calledOnce).to.equal(true);
      });     

  });
});