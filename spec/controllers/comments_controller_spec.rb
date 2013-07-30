require 'spec_helper'

describe CommentsController do

	let(:comment) { FactoryGirl.create(:comment) }

	describe '#create' do
		it 'should create a new comment' do
      before :each do
        comment_params = {
          text: "Text",
          link_id: link.id
        }
		  end
    	expect{ 
				post :create, comment: @comment_params #FactoryGirl.build(:comment).attributes
				}.to change(Comment, :count).by(1)
		end
	end

end