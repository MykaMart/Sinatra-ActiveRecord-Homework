require "sinatra/base"

require "./controllers/ApplicationController"
require "./controllers/HomeController"
require "./controllers/BookController"

require "./models/Book"

map ("/") {run ApplicationController}
map ("/home") {run HomeController}
map ("/books") {run BookController}