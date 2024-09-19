require "yaml"

module Properties
  class Property
    class << self
      def seed
        file_path = File.join(File.dirname(__FILE__), "property.yaml")
        yaml_data = YAML.load_file(file_path)

        yaml_data["properties"].each do |property|
          ::Property.find_or_create_by!(
            name: property["name"],
            headline: property["headline"],
            description: property["description"],
            city: property["city"],
            state: property["state"],
            country: property["country"],
            address: property["address"],
            latitude: property["latitude"],
            longitude: property["longitude"],
            bedrooms: property["bedrooms"],
            bathrooms: property["bathrooms"],
            square_feet: property["square_feet"],
            price_cents: property["price_cents"],
            price_currency: property["price_currency"]
          )
        end
      end
    end
  end
end
