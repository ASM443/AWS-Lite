module Api
    module V1
        class TestudosController < ApplicationController
            def index
                render json: {status: 'SUCCESS', 
                              message: 'No cheating',
                              data: nil              
                }
                
            end


            def show
                testudos = Testudo.where(buildingName: params[:id].capitalize)
                render json: {status: 'SUCCESS', 
                    message: 'Here you go!1',
                    data: testudos              
            }
            end
            # 1 Check if Testudo is in building
            #   If true return true
            #   If false return riddle of nearby building with testudo

            
            

        end
    end

end