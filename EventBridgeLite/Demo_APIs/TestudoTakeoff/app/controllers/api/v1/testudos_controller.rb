module Api
    module V1
        class TestudosController < ApplicationController
            def index
                render json: {status: 'SUCCESS', 
                              message: 'No cheating',
                              data: 'No cheating'              
                }
                
            end


            def show
                testudos = Testudo.where(buildingName: params[:id].capitalize)
                response = isTestHere
                render json: {status: 'SUCCESS', 
                    message: response,
                    data: response              
            }
            end

            
            #   Check if Testudo is in building
            #   If true return true
            #   If false return riddle of nearby building with testudo     
            def isTestHere
                building = params[:id].capitalize
                currentbuilding = Testudo.find {|x| x.buildingName == building}
                currentRegion = currentbuilding.region
                buldingsRegion = []

                if(!currentbuilding.testudoPresnt)
                    Testudo.all.each do |x|
                        if(x.region == currentRegion)
                            buldingsRegion.push(x.buildingName)
                        end
                    end
                    return "Maybe take a peek at " + buldingsRegion.sample       
                end

                return "There may be a Testudo at " + building
                
            end

        end
    end

end