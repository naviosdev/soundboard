//
//  ViewController.swift
//  bonnie soundboard
//
//  Created by Naveed Ahmed on 26/12/2016.
//  Copyright © 2016 Naveed Ahmed. All rights reserved.
//

import UIKit
import AVFoundation

var audioPlayer = AVAudioPlayer()
var audioIsplaying = Bool()


class ViewController: UIViewController,UIScrollViewDelegate  {

    
    
    
    @IBOutlet var pageCotrol: UIPageControl!
    
    @IBOutlet var myScrollView: UIScrollView!
    
    @IBOutlet var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myScrollView.contentSize = CGSize(width: 960, height: 100)
        myScrollView.delegate = self
        myScrollView.isPagingEnabled = true
       
        
        
        
        
    }

    @IBAction func pageAction(_ sender: Any) {
      

        
        switch pageCotrol.currentPage {
        case 0:
            myScrollView.bounds.origin.x = 0
        case 1:
            myScrollView.bounds.origin.x = 320
        case 2:
            myScrollView.bounds.origin.x = 640
        default:
            myScrollView.bounds.origin.x = 0
        }
    }

    

    
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        
        
        /*
        if pageCotrol.currentPage == 2{
            pageCotrol.currentPage =  pageCotrol.currentPage - 2
        } else {
            
            pageCotrol.currentPage += 1
        }*/
        
        print(myScrollView.bounds)
        
        
        
        
        /*
        if myScrollView.bounds.width == 320 {
            pageCotrol.currentPage = 2
        }*/
        
        switch myScrollView.bounds.origin.x {
        case 0:
            pageCotrol.currentPage = 0
        case 320:
            pageCotrol.currentPage = 1
        case 640:
            pageCotrol.currentPage = 2
        default:
            pageCotrol.currentPage = 0
        }
        
        
        
    }
    
    
    
    
    

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func action1(_ sender: Any) {
        
        if audioIsplaying == true {
            
            audioIsplaying = false
            
            audioPlayer.stop()
        } else {
            
            audioIsplaying = true
            let newSound = URL(fileURLWithPath: Bundle.main.path(forResource: "2", ofType: "mp3")!)
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: newSound)
            }
            catch {
                print("error l")
            }
            
            audioPlayer.play()
        }
        
    }
    
    
   
    
    @IBAction func action2(_ sender: Any) {
        
        let path = Bundle.main.path(forResource: "Sequence 01", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
        
        
    }
    
    
    @IBOutlet var button3: UIButton!
    
    @IBAction func action3(_ sender: Any) {
        
        button3.backgroundColor = UIColor.red
        let path = Bundle.main.path(forResource: "01 Nikes", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }

    }
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func call1(_ sender: Any) {
        let path = Bundle.main.path(forResource: "call1", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    @IBAction func call2(_ sender: Any) {
        let path = Bundle.main.path(forResource: "call2", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    @IBAction func call3(_ sender: Any) {
        let path = Bundle.main.path(forResource: "call3", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    @IBAction func call4(_ sender: Any) {
        let path = Bundle.main.path(forResource: "call4", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    @IBAction func call5(_ sender: Any) {
        let path = Bundle.main.path(forResource: "call5", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    @IBAction func call6(_ sender: Any) {
        let path = Bundle.main.path(forResource: "call6", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    @IBAction func call7(_ sender: Any) {
        let path = Bundle.main.path(forResource: "call7", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    @IBAction func call8(_ sender: Any) {
        let path = Bundle.main.path(forResource: "Sequence 01", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    
    
    
    
    //discipline bonnie
    
    @IBAction func d1(_ sender: Any) {
        let path = Bundle.main.path(forResource: "d1", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    @IBAction func d2(_ sender: Any) {
        let path = Bundle.main.path(forResource: "d2", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    @IBAction func d3(_ sender: Any) {
        let path = Bundle.main.path(forResource: "d3", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    @IBAction func d4(_ sender: Any) {
        let path = Bundle.main.path(forResource: "d4", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    @IBAction func d5(_ sender: Any) {
        let path = Bundle.main.path(forResource: "d5", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    @IBAction func d6(_ sender: Any) {
        let path = Bundle.main.path(forResource: "d6", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }

    @IBAction func d7(_ sender: Any) {
        let path = Bundle.main.path(forResource: "d7", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    @IBAction func d8(_ sender: Any) {
        let path = Bundle.main.path(forResource: "Sequence 01", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    
    
    
    
    
    //love bonnie
    
    
    @IBAction func l1(_ sender: Any) {
        let path = Bundle.main.path(forResource: "l1", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    @IBAction func l2(_ sender: Any) {
        let path = Bundle.main.path(forResource: "l2", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    @IBAction func l3(_ sender: Any) {
        let path = Bundle.main.path(forResource: "l3", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    @IBAction func l4(_ sender: Any) {
        let path = Bundle.main.path(forResource: "l4", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    @IBAction func l5(_ sender: Any) {
        let path = Bundle.main.path(forResource: "l5", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    @IBAction func l6(_ sender: Any) {
        let path = Bundle.main.path(forResource: "l6", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    @IBAction func l7(_ sender: Any) {
        let path = Bundle.main.path(forResource: "l7", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    @IBAction func l8(_ sender: Any) {
        let path = Bundle.main.path(forResource: "l8", ofType:"mp3")!
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        } catch {
            // couldn't load file :(
            print("error l")
        }
    }
    
    
    
}

