nconf = require('nconf')
express = require('express')
controller = require('./pages.controller')
auth = require('../../middleware/auth')
router = express.Router()
_ = require('lodash')

router.get('/v1', auth.checkUrl, controller.v1)
router.get('/v2', auth.checkUrl, controller.v2)

router.get('/test', controller.test)

module.exports = router