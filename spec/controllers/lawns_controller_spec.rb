require 'spec_helper'

describe LawnsController do

	describe "will be pending" do
		it "first test pending"
	end
  # let(:lawn) { FactoryGirl.create(:lawn) }
  # let(:mower_1) { FactoryGirl.create(:mower_1) }
  # let(:mower_2) { FactoryGirl.create(:mower_2) }

  # describe "creating a lawn with Ajax" do

  #   it "should increment the Lawn count" do
  #     expect do
  #       xhr :post, :create, lawn: { width: 5, height: 5 }
  #     end.to change(Lawn, :count).by(1)
  #   end

  #   it "should respond with success" do
  #     xhr :post, :create, relationship: { followed_id: other_user.id }
  #     expect(response).to be_success
  #   end
  # end

  # describe "destroying a relationship with Ajax" do

  #   before { user.follow!(other_user) }
  #   let(:relationship) { user.relationships.find_by(followed_id: other_user) }

  #   it "should decrement the Relationship count" do
  #     expect do
  #       xhr :delete, :destroy, id: relationship.id
  #     end.to change(Relationship, :count).by(-1)
  #   end

  #   it "should respond with success" do
  #     xhr :delete, :destroy, id: relationship.id
  #     expect(response).to be_success
  #   end
  # end

  describe "GET 'index' " do
    # it "returns a successful 200 response" do
    #    get :index, format: :json
    #   expect(response).to be_success
    # end

    # it "returns all the students" do
    #   FactoryGirl.create_list(:lawn, 5)
    #   get :index, format: :json

    #   puts "\n\n\n\n response.body:#{response.body}"
    #   aaaaa
    #   parsed_response = JSON.parse(response.body)
    #   expect(parsed_response['lawns'].length).to eq(5)
    # end
  end

    describe "POST 'create' " do
    	context "correct lawn format" do
    		it "returns a successful json string with success message" do
    			params = {"width"=>"1", "height"=>"1"}
    			# params[:lawn] = { width: 5, height: 5 }
	        post :create, params
	        puts "\n\n\nresponse:#{response} ----  response.body:#{response.body}\n\n\n\n\n"
	        expect(response).to be_success
	        
	        parsed_response = JSON.parse(response.body)
	        expect(parsed_response['success']).to eq("Accepted email format.")
	      end
      end

     #  context "incorrect lawn format" do
	    #   it "returns an error if an width is informed" do
	    #   	params = {}
    	# 		params['lawn'] = {"width"=>nil, "height"=>"1"}
	    #     post :create, params
	    #     puts "\n\n\n response.body:#{response.body}\nresponse:#{response}\n\n\n\n"
	    #     parsed_response = JSON.parse(response.body)
	    #     expect(response).to be_bad_request
	    #     expect(parsed_response['invalid']).to eq("Invalid email format.")
	    #   end
	    # end
    end

    # it "returns all the students" do
    #   FactoryGirl.create_list(:lawn, 5)
    #   get :index, format: :json

    #   puts "\n\n\n\n response.body:#{response.body}"
    #   aaaaa
    #   parsed_response = JSON.parse(response.body)
    #   expect(parsed_response['lawns'].length).to eq(5)
    # end
  # end



# describe "POST 'create' " do
#     context "correct email format" do
#       it "returns a successful json string with success message" do
#         post :create, { email: "newstudent@example.com" }
#         expect(response).to be_success
#         parsed_response = JSON.parse(response.body)
#         expect(parsed_response['success']).to eq("Accepted email format.")
#       end
#     end

#     context "incorrect email format" do
#       it "returns an error if an incorrect email format is submitted" do
#         post :create, { email: "new@studentexample" }
#         parsed_response = JSON.parse(response.body)
#         expect(response).to be_bad_request
#         expect(parsed_response['invalid']).to eq("Invalid email format.")
#       end
#     end
#   end
# end

end