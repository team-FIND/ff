# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# MainCategory
        # [
        #     { en: 'Sports', ja: 'スポーツ' },
        #     { en: 'Music', ja: '音楽' }
        # ].each do |d|
        #     I18n.locale = :en
        #     data = MainCategory.create(name: d[:en])

        #     I18n.locale = :ja
        #     data.name = d[:ja]
        #     data.save!
        # end

# SubCategory
        [
            { en: 'Baseball', ja: '野球' },
            { en: 'Soccer', ja: 'サッカー' }
        ].each do |d|
            I18n.locale = :en
            data = SubCategory.create(name: d[:en])

            I18n.locale = :ja
            data.name = d[:ja]
            data.save!
        end