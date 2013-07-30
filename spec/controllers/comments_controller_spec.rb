require 'spec_helper'

describe CommentsController do

	let(:comment) { FactoryGirl.create(:comment) }

	describe '#index' do

		it 'should assign @comments' do
			get :index
			comments = Comment.all
			expect(assigns(:comments)).to eq(comments)
		end

		it 'should render index.html' do
			get :index
			expect(response).to render_template :index
		end

	end

	describe '#create' do
		before :each do
			@comment_params  = {
				title: 'title',
				url: 'www.url.com'
			}
		end

		it 'should create a new comment' do
			expect{ 
				post :create, comment: @comment_params #FactoryGirl.build(:comment).attributes
				}.to change(Comment, :count).by(1)
		end

	end


	describe '#new' do
  	before :each do
  		get :new
  	end
  	it 'should render new.html' do
  		expect(response).to render_template :new
  	end
  	it 'should assign @comment' do
  		comment
  		expect{
  			assigns(:comment)
  			}.to be_instance_of(Comment)
  	end
  end

  describe '#edit' do 
  	it 'should find by id' do
  		get :edit, id: comment.id
  		expect(assigns(:comment)).to eq(comment)
  	end
  	
  end

  describe '#destroy' do
  	it 'should delete a comment' do
  		comment
  		expect{
  			delete :destroy, id: comment.id 
  		}.to change(Comment.count).by(-1)
  	end

  end

end