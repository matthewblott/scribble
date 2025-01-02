# Pin npm packages by running ./bin/importmap

pin("application")
pin("@hotwired/turbo-rails", to: "turbo.min.js")
pin("@hotwired/stimulus", to: "stimulus.min.js")
pin("@hotwired/stimulus-loading", to: "stimulus-loading.js")
pin_all_from("app/javascript/controllers", under: "controllers")
pin("ocr", to: "ocr.js")
pin("worker", to: "worker.js")
pin "@rails/request.js", to: "@rails--request.js.js" # @0.0.8
pin "@stimulus-components/sortable", to: "@stimulus-components--sortable.js" # @5.0.1
pin "sortablejs" # @1.15.2
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
# pin "@hotwired/strada", to: "https://ga.jspm.io/npm:@hotwired/strada@1.0.0-beta1/dist/strada.js"
# pin "@hotwired/strada", to: "@hotwired--strada.js" # @1.0.0
pin "@hotwired/strada", to: "strada.js"
