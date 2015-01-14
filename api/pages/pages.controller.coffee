_ = require('lodash')

exports.index = (req, res) ->
  res.send [
    {
      id:1,
      username:'zhang',
      userimg:'',
      job:'',
      hospital:'',
      specialty:'骨科 外科'
    },
    {
      id:2,
      username:'wang',
      userimg:'',
      job:'',
      hospital:'',
      specialty:'神经外科 内科 麻醉科'
    }
  ]