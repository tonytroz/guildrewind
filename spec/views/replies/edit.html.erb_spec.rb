require 'spec_helper'

describe "replies/edit" do
  before(:each) do
    @reply = assign(:reply, stub_model(Reply,
      :content => "MyString",
      :unread => false
    ))
  end

  it "renders the edit reply form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => replies_path(@reply), :method => "post" do
      assert_select "input#reply_content", :name => "reply[content]"
      assert_select "input#reply_unread", :name => "reply[unread]"
    end
  end
end
