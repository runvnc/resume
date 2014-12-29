resume = require('./resume')
fs = require 'fs'
require 'date-format-lite'

fixDate = (dtstr) ->
  dt = new Date(dtstr)
  dt.format('YYYY-MM-DD')

for work in resume.work
  if work.startDate
    work.startDate = fixDate work.startDate
  if work.endDate
    work.endDate = fixDate work.endDate

fs.writeFileSync 'resumefixed.json', JSON.stringify(resume, null, 2)

