_ = require 'lodash'
nconf = require 'nconf'
path = require 'path'
nconf.argv()
     .env()
     .file('user', path.join(path.resolve(__dirname, './config.json')))
express = require 'express'
http = require 'http'
morgan = require 'morgan'
app = express()
bodyParser = require 'body-parser'
server = http.createServer(app)
app.use(morgan('combined'))

app.set("port", nconf.get('PORT'))
app.set("views", __dirname + "/views")
app.set("view engine", "jade")
app.use(bodyParser.urlencoded({ extended: false }))

app.use(bodyParser.json())
require('./routes')(app)

server.listen app.get("port"), 'localhost', ->
  console.log "Express server listening on port " + app.get("port")

module.exports = server
