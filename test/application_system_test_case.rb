require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
  # driven_by :selenium, using: :headless_firefox, screen_size: [1400, 1400]
  setup do
    Webdrivers::Chromedriver.required_version = "128.0.6613.137"
  end
end
