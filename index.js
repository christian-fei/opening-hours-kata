module.exports = function OpeningHours (config) {
  this.getOpeningDays = getOpeningDays
  this.getOpeningHours = getOpeningHours

  function getOpeningDays () {
    return config.days
  }

  function getOpeningHours () {
    return config.hours
  }
}
