module.exports = (app) ->
  app.use('/pages', require('./api/pages'))