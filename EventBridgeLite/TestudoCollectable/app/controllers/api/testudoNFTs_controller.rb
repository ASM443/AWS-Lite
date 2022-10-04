module Api
  module V1
    class TestudoNFTsController < ApplicationController
      def index
        @testudoNFTs = TestudoNFT.order('created_at DESC');
        render json: {status: 'SUCCESS', 
          message: 'Here you go!',
          data: testudoNFTs              
        }
      end
    end
  end
end