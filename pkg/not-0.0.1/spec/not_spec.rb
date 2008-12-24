require File.dirname(__FILE__) + '/../lib/not'

class NotSpec < Spec::ExampleGroup

  it "should negate nil?" do
    @foo.not.nil?.should be_false
  end

  it "should chain" do
    @foo.not.not.nil?.should be_true
  end

end
