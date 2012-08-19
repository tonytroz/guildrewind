require 'spec_helper'

describe "Post pages" do

  subject { page }

  describe "index" do
    let(:user) { FactoryGirl.create(:user) }
    
    before(:all) { 31.times { FactoryGirl.create(:post, user: user) } }
    after(:all)  { Post.delete_all }

    before do
      visit posts_path
    end

    it { should have_selector('title', text: 'All posts') }
    it { should have_selector('h1',    text: 'All posts') }

    describe "pagination" do

      it { should have_selector('div.pagination') }

      it "should list each post" do
        Post.paginate(page: 1).each do |post|
          page.should have_selector('li', text: post.content)
        end
      end
    end
  end

  describe "post creation" do
    let(:user) { FactoryGirl.create(:user) }
    before do
      visit root_path
      sign_in user
    end

    describe "with invalid information" do

      it "should not create a post" do
        expect { click_button "Post" }.should_not change(Post, :count)
      end

      describe "error messages" do
        before { click_button "Post" }
        it { should have_content('error') } 
      end
    end

    describe "with valid information" do

      before { fill_in 'post_content', with: "Lorem ipsum" }
      it "should create a post" do
        expect { click_button "Post" }.should change(Post, :count).by(1)
      end
    end
  end
end