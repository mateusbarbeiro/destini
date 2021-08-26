import 'package:destini/story.dart';

class StoryBrain {
    int _storyNumber = 0;

    final List<Story> _storyData = [
        Story(
            storyTitle: 'Seu carro estourou o pneu em uma estrada sinuosa no meio do nada, sem sinal de celular. Você decide pedir carona. Uma picape enferrujada para perto de você. Um homem com um chapéu de aba larga e olhos sem alma abre a porta do passageiro para você e pergunta: "Precisa de uma carona, garoto?".',
            choice1: 'Eu vou entrar. Obrigado pela ajuda!',
            choice2: 'Melhor perguntar a ele se ele é um assassino primeiro.',
        ),
        Story(
            storyTitle: 'Ele balança a cabeça lentamente, sem se incomodar com a pergunta.',
            choice1: 'Pelo menos ele é honesto. Eu vou entrar.',
            choice2: 'Espere, eu sei como trocar um pneu.',
        ),
        Story(
            storyTitle: 'Quando você começa a dirigir, o estranho começa a falar sobre seu relacionamento com a mãe. Ele fica cada vez mais irritado a cada minuto. Ele pede que você abra o porta-luvas. Dentro, você encontra uma faca ensanguentada, dois dedos decepados e uma fita cassete de Elton John. Ele pega o porta-luvas.',
            choice1: 'Eu amo Elton John! Entregue a fita cassete para ele.',
            choice2: 'É ele ou eu! Você pega a faca e o esfaqueia.',
        ),
        Story(
            storyTitle: 'O que? Que policial fora! Você sabia que os acidentes de trânsito são a segunda causa de morte acidental na maioria das faixas etárias de adultos?',
            choice1: 'Reiniciar',
            choice2: '',
        ),
        Story(
            storyTitle: 'Conforme você quebra a grade de proteção e se inclina em direção às rochas irregulares abaixo, você reflete sobre a duvidosa sabedoria de esfaquear alguém enquanto a pessoa está dirigindo um carro em que você está.',
            choice1: 'Reiniciar',
            choice2: '',
        ),
        Story(
            storyTitle: 'Você se relaciona com o assassino enquanto entoa versos de "Você pode sentir o amor esta noite". Ele o deixa na próxima cidade. Antes de ir, ele pergunta se você conhece algum bom lugar para despejar corpos. Você responde: "Experimente o cais".',
            choice1: 'Reiniciar',
            choice2: '',
        )
    ];

    String getStory() {
        return _storyData[_storyNumber].storyTitle;
    }

    String getChoice1() {
        return _storyData[_storyNumber].choice1;
    }

    String getChoice2() {
        return _storyData[_storyNumber].choice2;
    }

    void nextStory(int choiceNumber) {
        if (_storyNumber == 0) {
            
            switch (choiceNumber) {
                case 1:
                    _storyNumber = 2;
                    break;
                case 2:
                    _storyNumber = 1;
                    break;
                default:
                    _storyNumber = 0;
            }

        } else if (_storyNumber == 1) {
            
            switch (choiceNumber) {
                case 1:
                    _storyNumber = 2;
                    break;
                case 2:
                    _storyNumber = 3;
                    break;    
                default:
                    _storyNumber = 0;
            }

        } else if (_storyNumber == 2) {

            switch (choiceNumber) {
                case 1:
                    _storyNumber = 5;
                    break;
                case 2:
                    _storyNumber = 4;
                    break;    
                default:
                    _storyNumber = 0;
            }

        } else {
            restart();
        }
    }

    void restart() {
        _storyNumber = 0;
    }

    bool buttonShouldBeVisible() {
        if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
            return true;
        } else {
            return false;
        }
    }
}