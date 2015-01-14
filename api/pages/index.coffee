nconf = require('nconf')
express = require('express')
controller = require('./pages.controller')
auth = require('../../middleware/auth')
router = express.Router()
_ = require('lodash')

router.get('/', auth.checkUrl, controller.index)

module.exports = router