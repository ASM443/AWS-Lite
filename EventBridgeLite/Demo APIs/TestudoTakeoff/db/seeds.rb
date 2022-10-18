# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



# North

Testudo.create ({
    buildingName: "Eppley",
    testudoPresnt: true,
    region: "North"
})

Testudo.create ({
    buildingName: "Clarice",
    testudoPresnt: false,
    region: "North"
})

#South

Testudo.create ({
    buildingName: "Tydings",
    testudoPresnt: true,
    region: "South"
})
Testudo.create ({
    buildingName: "Queen",
    testudoPresnt: false,
    region: "South"
})

#East

Testudo.create ({
    buildingName: "Toll",
    testudoPresnt: true,
    region: "East"
})
Testudo.create ({
    buildingName: "Iribe",
    testudoPresnt: false,
    region: "East"
})

#West

Testudo.create ({
    buildingName: "Mckeldin",
    testudoPresnt: true,
    region: "West"
})
Testudo.create ({
    buildingName: "Tawes",
    testudoPresnt: false,
    region: "West"
})