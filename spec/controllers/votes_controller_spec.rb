require 'spec_helper'

describe VotesController do

	let(:vote) { FactoryGirl.create(:vote) }

	describe '#create' do
		before :each do
			@vote_params  = {
				title: 'title',
				url: 'www.url.com'
			}
		end

		it 'should create a new vote' do
			expect{ 
				post :create, vote: @vote_params #FactoryGirl.build(:vote).attributes
				}.to change(Vote, :count).by(1)
		end

	end

	describe '#new' do
  	before :each do
  		get :new
  	end
  	it 'should render new.html' do
  		expect(response).to render_template :new
  	end
  	it 'should assign @vote' do
  		vote
  		expect{
  			assigns(:vote)
  			}.to be_instance_of(Vote)
  	end
  end

  describe '#destroy' do
  	it 'should delete a vote' do
  		vote
  		expect{
  			delete :destroy, id: vote.id 
  		}.to change(Vote.count).by(-1)
  	end

  end

end