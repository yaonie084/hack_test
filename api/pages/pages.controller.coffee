_ = require('lodash')

exports.v1 = (req, res) ->
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

exports.v2 = (req, res) ->
  res.send [{
        id:1,
        username:'张某某',
        img:'https://coding.net/static/fruit_avatar/Fruit-14.png',
        job:'主任1',
        hospital:"北京大学第三人民医院1",
        specialty:"骨科",
        time:'2014-12-15'
      }, {
        id:2,
        username:'李某某',
        img:'https://coding.net/static/fruit_avatar/Fruit-13.png',
        job:'主任2',
        hospital:"北京大学第三人民医院2",
        specialty:"外科",
        time:'2015-1-15'
      }, {
        id:3,
        username:'赵某某',
        img:'https://coding.net/static/fruit_avatar/Fruit-12.png',
        job:'主任3',
        hospital:"北京大学第三人民医院3",
        specialty:"骨科，外科",
        time:'2014-1-15'
      }]

exports.test = (req, res) ->
  res.send {foo: "ggggggg"}