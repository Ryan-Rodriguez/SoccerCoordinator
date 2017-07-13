
import UIKit
//part 1 (creating stored info)
// players is an array that will hold dictionaires
var players: [[String: String]] = []

// function to make information neatly stored into dictionary
func playerInfo(name a: String, height b: String, isExperienced c: String, guardian d: String ) -> [String: String] {
    let info = ["name": a, "height": b, "isExperienced": c, "guardian": d]
        return info
}

// All the players info made into dictionaires, which is then stored into an array
var joeSmith = playerInfo(name: "Joe Smith", height: "42", isExperienced: "Yes", guardian: "Jim and Jan Smith")
players.append(joeSmith)

var jillTanner = playerInfo(name: "Jill Tanner", height: "36", isExperienced: "Yes", guardian: "Clara Tanner")
players.append(jillTanner)

var billBon = playerInfo(name: "Bill Bon", height: "43", isExperienced: "Yes", guardian: "Sara and Jenny Bon")
players.append(billBon)

var evaGordon = playerInfo(name: "Eva Gordon", height: "45", isExperienced: "No", guardian: "Wendy and Mike Gordon")
players.append(evaGordon)

var mattGill = playerInfo(name: "Matt Gill", height: "40", isExperienced: "No", guardian: "Charles and Sylvia Gill")
players.append(mattGill)

var kimmyStein = playerInfo(name: "Kimmy Stein", height: "41", isExperienced: "No", guardian: "Bill and Hillary")
players.append(kimmyStein)

var sammyAdams = playerInfo(name: "Sammy Adams", height: "45", isExperienced: "No", guardian: "Jeff Adams")
players.append(sammyAdams)

var karlSaygan = playerInfo(name: "Karl Saygan", height: "42", isExperienced: "Yes", guardian: "Heather Bledsoe")
players.append(karlSaygan)

var suzaneGreenberg = playerInfo(name: "Suzane Greenberg", height: "44", isExperienced: "Yes", guardian: "Henrietta Dumas")
players.append(suzaneGreenberg)

var salDali = playerInfo(name: "Sal Dali", height: "41", isExperienced: "No", guardian: "Gala Dali")
players.append(salDali)

var joeKavalier = playerInfo(name: "Joe Kavalier", height: "39", isExperienced: "No", guardian: "Sam and Elaine Kavalier")
players.append(joeKavalier)

var benFinkelstein = playerInfo(name: "Ben Finkelstein", height: "44", isExperienced: "No", guardian: "Aaron and Jill Finkelstein")
players.append(benFinkelstein)

var diegoSoto = playerInfo(name: "Diego Soto", height: "41", isExperienced: "Yes", guardian: "Robin and Sarika Soto")
players.append(diegoSoto)

var chloeAlaska = playerInfo(name: "Chloe Alaska", height: "47", isExperienced: "No", guardian: "David and Jamie Alaska")
players.append(chloeAlaska)

var arnoldWillis = playerInfo(name: "Arnold Willis", height: "43", isExperienced: "No", guardian: "Claire Willis")
players.append(arnoldWillis)

var phillipHelm = playerInfo(name: "Phillip Helm", height: "44", isExperienced: "Yes", guardian: "Thomas Helm and Eva Jones")
players.append(phillipHelm)

var lesClay = playerInfo(name: "Les Clay", height: "42", isExperienced: "Yes", guardian: "Wynonna Brown")
players.append(lesClay)

var herschelKrustofski = playerInfo(name: "Herschel Krustofski", height: "45", isExperienced: "Yes", guardian: "Hyman and Rachel Krustofski")
players.append(herschelKrustofski)

//part 2 (players will now be sorted into even teams)
var teamSharks: [[String: String]] = []
var teamRaptors: [[String: String]] = []
var teamDragons: [[String: String]] = []

var experiencedPlayers: [[String: String]] = []
var unexperiencedPlayers : [[String: String]] = []

// sorting the players now by experience
for player in players {
    if player["isExperienced"] == "Yes" {
        experiencedPlayers.append(player)
    } else {
        unexperiencedPlayers.append(player)
    }
}
// now sorting experienced players into even teams
for experiencedPlayer in experiencedPlayers {
    if experiencedPlayer.count > teamSharks.count && teamRaptors.count >= teamSharks.count && teamDragons.count >= teamSharks.count{
        teamSharks.append(experiencedPlayer)
    } else if experiencedPlayer.count > teamRaptors.count && teamSharks.count >= teamRaptors.count && teamDragons.count >= teamRaptors.count {
        teamRaptors.append(experiencedPlayer)
    } else if experiencedPlayer.count > teamDragons.count && teamRaptors.count >= teamDragons.count && teamSharks.count >= teamDragons.count {
        teamDragons.append(experiencedPlayer)
    }
    
}
// now sorting unexperienced players into even teams
 for unexperiencedPlayer in unexperiencedPlayers {
 if players.count > teamSharks.count && teamRaptors.count >= teamSharks.count && teamDragons.count >= teamSharks.count{
 teamSharks.append(unexperiencedPlayer)
 } else if players.count > teamRaptors.count && teamSharks.count >= teamRaptors.count && teamDragons.count >= teamRaptors.count {
 teamRaptors.append(unexperiencedPlayer)
 } else if players.count > teamDragons.count && teamRaptors.count >= teamDragons.count && teamSharks.count >= teamDragons.count {
 teamDragons.append(unexperiencedPlayer)
 }
 
 }

//part 3
// making personalized letters for parents/guardians for each team


var letters: [String] = []

for player in teamSharks {
    var msg = "Dear \(player["guardian"]!), I am happy to inform you that \(player["name"]!) is an official team member of the Sharks! And that practice will begin March 17th, at 3:00pm."
    letters.append(msg)
    print(msg)
}

for player in teamRaptors {
    var msg = "Dear \(player["guardian"]!), I am happy to inform you that \(player["name"]!) is an official team member of the Raptors! And that practice will begin March 18th, at 1:00pm."
    letters.append(msg)
    print(msg)
}

for player in teamDragons {
    var msg = "Dear \(player["guardian"]!), I am happy to inform you that \(player["name"]!) is an official team member of the Dragons! And that practice will begin March 17th, at 1:00pm."
    letters.append(msg)
    print(msg)
}











