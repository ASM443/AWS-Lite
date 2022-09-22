module Api
    module V1
        class TestudosController < ApplicationController
            def index
            
                testudos = Testudo.order('created_at DESC');
                render json: {status: 'SUCCESS', 
                              message: 'Here you go!',
                              data: testudos              
                }
                
            end


            def show
                check(params[:id].capitalize)
                testudos = Testudo.where(buildingName: params[:id].capitalize)
                render json: {status: 'SUCCESS', 
                    message: 'Here you go!',
                    data: testudos              
            }
            end

            def check (buildN)
                if buildN.pluck :testudoPresnt
                    render json: {status: 'SUCCESS', 
                        message: 'Here you go!',
                        data: buildN
                    }
                end
            end
        end
    end

end