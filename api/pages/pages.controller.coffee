_ = require('lodash')

exports.index = (req, res) ->
  res.send [{
    id: 0,
    name: '杨涛',
    lastText: 'WHO遗传病社区控制合作中心',
    face: 'https://coding.net/static/fruit_avatar/Fruit-19.png'
  }, {
    id: 1,
    name: '兰炯采',
    lastText: '中国医药教育协会',
    face: 'https://coding.net/static/fruit_avatar/Fruit-18.png'
  }, {
    id: 2,
    name: '卢大儒',
    lastText: '中国优生优育协会',
    face: 'https://coding.net/static/fruit_avatar/Fruit-17.png'
  }, {
    id: 3,
    name: '黄玉强',
    lastText: '好医生医学教育中心',
    face: 'https://coding.net/static/fruit_avatar/Fruit-16.png'
  }, {
    id: 4,
    name: '刘红刚',
    lastText: '首都医科大学附属北京同仁医院',
    face: 'https://coding.net/static/fruit_avatar/Fruit-15.png'
  }]