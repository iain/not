require File.dirname(__FILE__) + '/../lib/not'

class Duck

  def quack?
    true
  end

  def bark?
    nil
  end

end

class NotSpec < Spec::ExampleGroup

  describe "Using the not method" do
    
    it "should negate nil?" do
      @foo.should be_nil
      @foo.not.nil?.should be_false
    end

    it "should chain" do
      @foo.not.not.nil?.should be_true
    end

    describe "a duck" do

      before do
        @duck = Duck.new
      end

      it "should quack" do
        @duck.quack?.should be_true
        @duck.not.quack?.should be_false
      end

      it "should not bark" do
        @duck.bark?.should be_nil
        @duck.not.bark?.should be_true
      end

    end

  end

end
