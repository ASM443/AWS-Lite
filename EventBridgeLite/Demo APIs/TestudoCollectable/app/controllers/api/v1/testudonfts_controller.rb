require 'net/http'

module Api
  module V1
    class TestudonftsController < ApplicationController
      def index
        #testcall()
      end

        def show
          buildingName = params[:id].capitalize
          uri = URI("http://127.0.0.1:3000/api/v1/testudos/#{buildingName}")
          search_result1 = Net::HTTP.get_response(uri)


          render json: {status: 'SUCCESS', 
            message: 'No cheating',
            data: search_result1.body             
          }  
        end

        # Check if building has Test
        # If true return testudoPresnt
        # If false return no Test
 
    end
  end
end