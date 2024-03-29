module Model
  module ToCSV
    def to_csv
      CSV.generate do |csv|
        csv << column_names
        all.each do |resource|
          csv << resource.attributes.values_at(*column_names)
        end
      end
    end
  end
end
