require_relative './config/environment'

use WelcomeController
use StatsController
use UserHistoryController
use NewGameController
run App
