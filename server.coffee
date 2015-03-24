require 'oneapm'
_ = require 'lodash'
nconf = require 'nconf'
path = require 'path'
nconf.argv()
     .env()
     .file('user', path.join(path.resolve(__dirname, './config.json')))

isProd = nconf.get('NODE_ENV') == 'production'
isDev = nconf.get('NODE_ENV') == 'development'
# use pm2 cluster mode already
# cluster = require 'cluster'
# cores = nconf.get("CORES")
# if cores != 0 && cluster.isMaster && (isDev || isProd)
#   _.times(cores || require('os').cpus().length-1, cluster.fork)
#   cluster.on "disconnect", (worker, code, signal) ->
#     w = cluster.fork() # replace the dead worker
#     console.log "[%s] [master:%s] worker:%s disconnect! new worker:%s fork", new Date(), process.pid, worker.process.pid, w.process.pid
# else
express = require 'express'
http = require 'http'
morgan = require 'morgan'
app = express()
cors = require 'cors'
bodyParser = require 'body-parser'
methodOverride = require 'method-override'
favicon = require 'serve-favicon'
server = http.createServer(app)
app.use(morgan('combined'))
app.use(cors())
app.set("port", nconf.get('PORT'))

if isProd
  publicDir = path.join(__dirname, "/public")
else
  if isDev
    publicDir = path.join(__dirname, "/client")

app.use(bodyParser.urlencoded({ extended: false }))
app.use bodyParser.json()
app.use methodOverride()

app.set 'publicDir', publicDir

app.use favicon(publicDir + '/favicon.ico')

app.use(express['static'](publicDir))
app.set("views", __dirname + "/views")
app.set("view engine", "jade")
app.enable('trust proxy')
app.use(bodyParser.json())
require('./routes')(app)

Slack = require('slack-node');

webhookUri = nconf.get('SLACK_WEBHOOK');

slack = new Slack();
slack.setWebhook(webhookUri);

app.use (err, req, res, next) ->
  console.log 'error'
  slack.webhook {
    channel: '#guahao'
    username: 'hack_test'
    text: err.stack
  }, (err, response) ->
    console.log response

  res.status 500
  res.send 'oops!'

server.listen app.get("port"), ->
  console.log "Express server listening on port " + app.get("port")

module.exports = server