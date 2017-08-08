const express = require('express')
const app = express()

app.set('redirectStatusCode', process.env.REDIRECT_STATUS_CODE)

app.set('redirectURI', process.env.REDIRECT_URI)

app.get('*', (req, res) => {
  res.redirect(
    app.get('redirectStatusCode'),
    app.get('redirectURI')
  )
})

module.exports = app
