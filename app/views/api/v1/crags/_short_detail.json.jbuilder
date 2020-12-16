# frozen_string_literal: true

json.extract! crag,
              :id,
              :name,
              :rain,
              :sun
json.slug_name crag.name.parameterize
json.rocks crag.rocks

json.photo do
  json.id crag.photo&.id
  json.url url_for(crag.photo.picture) if crag.photo
end

json.climbing_type do
  json.extract! crag,
                :sport_climbing,
                :bouldering,
                :multi_pitch,
                :trad_climbing,
                :aid_climbing,
                :deep_water,
                :via_ferrata
end
json.orientation do
  json.extract! crag,
                :north,
                :north_east,
                :east,
                :south_east,
                :south,
                :south_west,
                :west,
                :north_west
end
json.seasons do
  json.extract! crag,
                :summer,
                :autumn,
                :winter,
                :spring
end
json.localization do
  json.extract! crag,
                :latitude,
                :longitude,
                :code_country,
                :country,
                :city,
                :region
end

json.routes_figures do
  json.route_count crag.crag_routes.count
  json.grade do
    json.min_value crag.min_grade_value
    json.max_value crag.max_grade_value
    json.max_text crag.max_grade_text
    json.min_text crag.min_grade_text
  end
end
