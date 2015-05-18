title: "Go-Workers - Simple background processing for golang"
tags:
---

Last week I was creating the new feed synchronisation of Uhura App and the one of the most important thing about this new implementation is run separated of the main backend process. Uhura App is a cloud based podcast player, it's perfect for who want keep sync the subscriptions and episodes play status in all devices, Uhura has a browser and android version, today the project has awesome features like you can start listen a podcast episode in you android going to work and when arrive at work finish the episode there on web browser. The Uhura frontend is open source and it's made with Ember.js optimised to run in  cordova and node-webkit, take a look on [github page](https://github.com/uhuraapp/uhura-dashboard) and help me to improve the project. The Uhura API was made with golang using [gin framework](https://github.com/gin-gonic/gin) and postgresql([gorm](https://github.com/jinzhu/gorm)) as database. Check out the new version of Uhura on [uhura.io](http://uhura.io)

There are many good options to run parallel or background jobs on golang, I'm not able to cover all, but you can learn a bit more about <a href="https://gobyexample.com/goroutines" target="_blank">goroutines here</a>, if you are using sidekiq in a ruby project check out the <a href="http://www.goworker.org" target="_blank">goworker</a> project, and watch the (classic) talk by Rob Pike <a href="https://www.youtube.com/watch?v=cN_DpYBzKso" target="_blank">Concurrency Is Not Parallelism</a>. In this post I'll talk about [go-workers](https://github.com/jrallison/go-workers) package.

To install go-workers run:

``` bash
$ go get github.com/jrallison/go-workers
```


Set *server* a redis server URL and *process* a unique process id for this instance of workers to **workers.Configure**.

``` golang
workers.Configure(map[string]string{
  "server":  "localhost:6379",
  "process": "1",
})
```

The full configuration accept to **workers.Configure** is:

``` golang
map[string]string{
  "server":    "localhost:6379",
  "process":   "1",
  "poll":      "1",
  "namespace": "abc",
  "database":  "1",
  "password":  "test",
}
```
