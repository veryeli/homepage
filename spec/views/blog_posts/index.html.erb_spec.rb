require 'spec_helper'

describe "blog_posts/index" do
  before(:each) do
    assign(:blog_posts, [
      stub_model(BlogPost,
        :title => "Title",
        :text => "Text"
      ),
      stub_model(BlogPost,
        :title => "Title",
        :text => "Text"
      )
    ])
  end

  it "renders a list of blog_posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
