require 'csv'

namespace :import_csv do 
    task data: :environment do
        #user.csv의 경로를 filename에 저장
        CSV.foreach("app/assets/no_smoking_place(1).csv", :headers => true) do |row|
            # p row
            #users.csv파일의 각 행을 array 형태로 출력
            Home.create!(row.to_hash)
        end
    end
end

# rake import_csv:data