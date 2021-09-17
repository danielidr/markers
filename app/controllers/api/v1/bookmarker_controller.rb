module Api
    module V1
        class BookmarkerController < V1Controller

            def info
                categories_info = Category.all
                render json: json_structure(categories_info)
            end

            def level(category)
                if category.public
                    return "Public"
                else
                    return "Private"
                end
            end

            def subcategories(category)
                children = Category.where(parent_id: category.id)
            end

            private

            def json_structure(categories)
                array = []
                categories.each do |category|
                    h = {}
                    h['id'] = category.id
                    h['name'] = category.name
                    h['visibility_level'] = level(category)
                    h['subcategories'] = subcategories(category)
                    h['markers'] = category.markers
                    array.push(h)
                end
                array
            end
            
        end
    end
end