//
//  StoryBrain.swift
//  destini
//
//  Created by Bruno Lopes on 15/12/21.
//

import Foundation

struct StoryBrain {
    
    
    let stories = [
        Story(title: "O pneu do seu carro estourou em uma estrada sinuosa no meio do nada. Você decide pedir carona. Um tempo depois, uma picape velha e enferrujada para perto de você. Um homem com um chapéu mexicano e sem brilho nos olhos abre o vidro do passageiro e pergunta: 'Você precisa de carona?'.",
              choice1: "Opa, com certeza. Muito obrigado pela ajuda!", choice1Destination: 2,
              choice2: "Melhor perguntar se ele não é um assasino antes.", choice2Destination: 1
        ),
        Story(title: "Ele balança a cabeça negativamente, sem se importar com a pergunta.",
              choice1: "Então vamos lá, muito obrigado pela ajuda!", choice1Destination: 2,
              choice2: "Na verdade eu sei trocar o pneu, vou fazer isso!", choice2Destination: 3
        ),
        Story(title: "Ele começa a dirigir e também a falar sobre o relacionamento que tem com a mãe. Ele vai ficando cada vez mais irritado e pede que você abra o porta-luvas. Dentro tem uma faca ensanguentada, dois dedos decepados e uma fita cassete do Tim Maia.",
              choice1: "Eu amo Tim Maia. Vamos escutar?", choice1Destination: 5,
              choice2: "É ele ou eu. Vou esfaqueá-lo.", choice2Destination: 4
        ),
        Story(title: "Sério? Eu não faria isso. Você sabia que os acidentes de trânsito são a segunda maior causa de morte acidental? Logo após ele ir embora, você morre atropelado.",
              choice1: "The", choice1Destination: 0,
              choice2: "End", choice2Destination: 0
        ),
        Story(title: "Enquanto você cai morro abaixo, você reflete sobre a duvidosa sabedoria de esfaquear alguém que está dirigindo o carro que você se encontra.",
              choice1: "The", choice1Destination: 0,
              choice2: "End", choice2Destination: 0
        ),
        Story(title: "Você e o assassino vão cantando Tim Maia até ele te deixar na próxima cidade. Antes de você ir, ele pergunta se tu conhece algum bom lugar pra desovar corpos. Você responde: 'Tente no cais'.",
              choice1: "The", choice1Destination: 0,
              choice2: "End", choice2Destination: 0
        )
    ]
    
    var storyNumber = 0
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
        
    }
    
    func getStory() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
}
