const {ok, deepEqual} = require('assert')
const {test} = require('m.test')

const OpeningHours = require('..')
const {MON, WED, FRI} = require('../constants')
/*
Write a small module that follows this contract:

```
OpeningHours.isOpenOn(date)
OpeningHours.nextOpeningDate(date)
```
*/

/*
Shop opening days: Mon, Wed, Fri
Shop opening hours: 08:00 - 16:00

wednesday = '2016-05-11T12:22:11.824Z'
thursday = '2016-05-12T12:22:11.824Z'
fridayMorning = '2016-05-13T08:00:00.000Z'

OpeningHours.isOpenOn(wednesday) == true
OpeningHours.isOpenOn(thursday) == false

OpeningHours.nextOpeningDate(wednesday) === fridayMorning
*/

test(`
The opening days and hours of the shop
need to be configurable, and can be
scattered in the week
(e.g. Mon, Wed, Fri from 08:00 to 16:00)
`, function () {
  const openingHours = new OpeningHours({
    days: [MON, WED, FRI],
    hours: ['08:00', '16:00']
  })

  deepEqual([MON, WED, FRI], openingHours.getOpeningDays())
  deepEqual(['08:00', '16:00'], openingHours.getOpeningHours())
})

test.skip(`
Amy needs to display the date of the next
opening on a billboard outside of the shop
`, function () {
  ok(false)
})

test.skip(`
Amy also wants to display on the website of the
shop whether it is opened or closed at the moment
`, function () {
  ok(false)
})
