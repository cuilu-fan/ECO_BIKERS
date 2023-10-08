// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

import AddBadgeController from "./controllers/add_badge_controller.js"
Stimulus.register("add-badge", AddBadgeController)
