require "my_gem"

RSpec.describe MyGem do
  it "has a version number" do
    expect(MyGem::VERSION).not_to be nil
  end

  it "can call C function" do
    expect(MyGem.hello).to eq("Hello from C!")
  end

  it "can add numbers" do
    expect(MyGem.add(2, 3)).to eq(5)
  end
end
