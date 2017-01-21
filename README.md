# opening-hours-kata

Amy and Valerie, the shop owners, need you to develop a simple program that satisfies the following requirements:


- The opening days and hours of the shop need to be configurable, and can be scattered in the week (e.g. Mon, Wed, Fri from 08:00 to 16:00)
- Amy needs to display the date of the next opening on a billboard outside of the shop
- Amy also wants to display on the website of the shop whether it is opened or closed at the moment

Write a small module that follows this contract, so that Valerie can easily integrate it:

```
OpeningHours.isOpenOn(date)
OpeningHours.nextOpeningDate(date)
```


## test cases

You can use the following test cases to get started:

```
Shop opening days: Mon, Wed, Fri
Shop opening hours: 08:00 - 16:00

wednesday = '2016-05-11T12:22:11.824Z'
thursday = '2016-05-12T12:22:11.824Z'
fridayMorning = '2016-05-13T08:00:00.000Z'

OpeningHours.isOpenOn(wednesday) == true
OpeningHours.isOpenOn(thursday) == false

OpeningHours.nextOpeningDate(wednesday) === fridayMorning
```


Choose whatever language you like. (PS: Valerie likes Haskell and Elixir).


## don't be shy

If you want to share what you came up with, don't hesitate to open an issue with a link to your repository.
I will link it here and we both will live a long and happy life.

Submitted solutions:

- [petemcfarlane/opening-hours-kata ~ Haskell](https://github.com/petemcfarlane/opening-hours-kata)
- [MatteoPierro/opening-hours-kata ~ Scala](https://github.com/MatteoPierro/opening-hours-kata)
- [tiagomartinho/opening-hours-kata ~ Swift](https://github.com/tiagomartinho/opening-hours-kata)
- [AndrewSinclair/opening-hours-kata ~ Clojure](https://github.com/AndrewSinclair/opening-hours-kata)
- [amirci/opening-hours-kata-hs ~ Haskell](https://github.com/amirci/opening-hours-kata-hs)
- [shanecharles/opening-hours-kata-solutions ~ Erlang & Commodore 64](https://github.com/shanecharles/opening-hours-kata-solutions/)
