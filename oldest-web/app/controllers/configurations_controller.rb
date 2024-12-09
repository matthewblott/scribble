class ConfigurationsController < ApplicationController
  def ios
    render json: {
      settings: {},
      rules: [
        {
          patterns: [
            ".*"
          ],
          properties: {
            context: "default",
            uri: "turbo://fragment/web",
            pull_to_refresh_enabled: false,
            scroll_enabled: false
          }
        },

        {
          patterns: [
            "/new$",
            "/edit$"
          ],
          properties: {
            context: "modal"
          }
        }
      ]
    }
  end

  def android
    render json: {
      "settings": {
        "screenshots_enabled": true
      },
      "rules": [
        {
          "patterns": [
            ".*"
          ],
          "properties": {
            "context": "default",
            "uri": "turbo://fragment/web",
            "pull_to_refresh_enabled": false
          }
        }
      ]
    }
  end
end
