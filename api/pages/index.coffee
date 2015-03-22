nconf = require('nconf')
express = require('express')
controller = require('./pages.controller')
auth = require('../../middleware/auth')
router = express.Router()
_ = require('lodash')

router.post('/test', controller.test)

module.exports = router