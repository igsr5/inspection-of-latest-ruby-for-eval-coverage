require "rails_helper"
require "coverage"

describe "sample/index.html.erb", type: :view do
  it "displays all the widgets" do
    Coverage.start(oneshot_lines: true, eval: true)

    render template: "sample/index", formats: [:html]

    p Coverage.result
  end
end
