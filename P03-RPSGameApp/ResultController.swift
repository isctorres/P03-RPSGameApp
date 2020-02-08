//
//  ResultController.swift
//  P03-RPSGameApp
//
//  Created by Isc. Torres on 2/7/20.
//  Copyright © 2020 isctorres. All rights reserved.
//

import UIKit

class ResultController: UIViewController {

    @IBOutlet var imvResultado: UIImageView!
    @IBOutlet var lblMensaje1: UILabel!
    @IBOutlet var lblMensaje2: UILabel!
    @IBOutlet var imgResult: UIImageView!
    
    var opc:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        var optMachine = Int.random(in: 1 ..< 4)
        switch opc {
            case 1:
                switch optMachine {
                    case 1: lblMensaje1.text = "IT'S A TIE"
                            lblMensaje2.text = "The computer choice was ROCK and yours was ROCK"
                            imvResultado.image = UIImage(named: "equals")
                        break;
                    case 2: lblMensaje1.text = "YOU LOSE"
                            lblMensaje2.text = "The computer choice was PAPER and yours was ROCK"
                            imvResultado.image = UIImage(named: "PaperCoversRock")
                            imgResult.image = UIImage(named: "nowin")
                        break;
                    case 3: lblMensaje1.text = "YOU WIN"
                            lblMensaje2.text = "The computer choice was SCISSORS and yours was ROCK"
                            imvResultado.image = UIImage(named: "RockCrushesScissors")
                            imgResult.image = UIImage(named: "win")
                        break;
                    default:lblMensaje1.text = "UPSSS!!"
                            lblMensaje2.text = "Inconrrect Option, try again.."
                            imvResultado.image = UIImage(named: "ouch")
                        break;
                }
                break;
            case 2:
                switch optMachine {
                    case 1: lblMensaje1.text = "YOU WIN"
                            lblMensaje2.text = "The computer choice was ROCK and yours was PAPER"
                            imvResultado.image = UIImage(named: "PaperCoversRock")
                            imgResult.image = UIImage(named: "win")
                        break;
                    case 2: lblMensaje1.text = "IT'S A TIE"
                            lblMensaje2.text = "The computer choice was PAPER and yours was PAPER"
                            imvResultado.image = UIImage(named: "equals")
                        break;
                    case 3: lblMensaje1.text = "YOU LOSE"
                            lblMensaje2.text = "The computer choice was SCISSORS and yours was PAPER"
                            imvResultado.image = UIImage(named: "ScissorsCutPaper")
                            imgResult.image = UIImage(named: "nowin")
                        break;
                    default:lblMensaje1.text = "UPSSS!!"
                            lblMensaje2.text = "Inconrrect Option, try again.."
                            imvResultado.image = UIImage(named: "ouch")
                        break;
                }
                break;
            case 3:
                switch optMachine {
                    case 1: lblMensaje1.text = "YOU LOSE"
                            lblMensaje2.text = "The computer choice was ROCK and yours was SCISSORS"
                            imvResultado.image = UIImage(named: "RockCrushesScissors")
                            imgResult.image = UIImage(named: "nowin")
                        break;
                    case 2: lblMensaje1.text = "YOU WIN"
                            lblMensaje2.text = "The computer choice was PAPER and yours was SCISSORS"
                            imvResultado.image = UIImage(named: "ScissorsCutPaper")
                            imgResult.image = UIImage(named: "win")
                        break;
                    case 3: lblMensaje1.text = "IT'S A TIE"
                            lblMensaje2.text = "The computer choice was SCISSORS and yours was SCISSORS"
                            imvResultado.image = UIImage(named: "equals")
                        break;
                    default:lblMensaje1.text = "UPSSS!!"
                            lblMensaje2.text = "Inconrrect Option, try again.."
                            imvResultado.image = UIImage(named: "ouch")
                        break;
                }
                break;
            default:
                lblMensaje1.text = "UPSSS!!"
                lblMensaje2.text = "Inconrrect Option, try again.."
                imvResultado.image = UIImage(named: "ouch")
                break;
        }
        // Do any additional setup after loading the view.
    }
    

    @IBAction func clickTryAgain(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
