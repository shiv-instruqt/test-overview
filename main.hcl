resource "lab" "main" {
  title       = "overview-test-18518ca9"
  description = "This is the Skeleton Lab.\nYou can use this as a minimal starting point for developing labs.\n"

  # timelimit and idle are both required on every lab.
  settings {
    timelimit {
      duration = "1h"
    }

    idle {
      enabled = true
      timeout = "15m"
    }
  }

  layout = resource.layout.single_panel

  content {
    chapter "__default" {
      title = "Default"

      page "tc021-test-page" {
        reference = resource.page.tc021-test-page
        title     = "TC021 Test Page"
      }
    }
  }
}
