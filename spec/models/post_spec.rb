require 'spec_helper'

describe Post do
  before do
    @post = Post.new(title: "NewPost", body: "Hello", university: "DBC")
  end

    subject { @post }
    it { should be_valid }

   describe "doesn't save a invalid post" do
    before { @post.title = nil }
    it { should_not be_valid }
   end
end
