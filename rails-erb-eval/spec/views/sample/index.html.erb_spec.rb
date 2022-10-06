require "rails_helper"
require "coverage"

describe "sample/index.html.erb", type: :view do
  it do
    @text = "test"
    render template: "sample/index", formats: [:html]
  end
end
