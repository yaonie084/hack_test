module.exports = (app) ->
  app.use('/pages', require('./api/pages'))
  app.route("/").get (req, res) ->
    res.sendfile app.get("publicDir") + "/index.html"