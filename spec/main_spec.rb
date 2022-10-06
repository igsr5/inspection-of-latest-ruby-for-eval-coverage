def foo(n)
  if n <= 10
    p "n < 10"
  else
    p "n > 10"
  end
end

eval <<~RUBY, nil, __FILE__, __LINE__ + 1
def bar(n)
  if n <= 10
    p "n < 10"
  else
    p "n >= 10" # テストされていない
  end
end
RUBY

require "spec_helper"
RSpec.describe do
  before do
    foo(1)
    bar(1)
  end
  it "should be true" do
    expect(true).to be true
  end
end
