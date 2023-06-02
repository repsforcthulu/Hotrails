require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  #switch to non headless to watch it vroom
  driven_by :selenium, using: :headless_firefox, screen_size: [1400, 1400]
end
