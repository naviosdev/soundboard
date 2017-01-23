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

    
    //properties
    @IBOutlet var pageCotrol: UIPageControl!
    @IBOutlet var myScrollView: UIScrollView!
    @IBOutlet var myView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //setting up the scroll view
        myScrollView.contentSize = CGSize(width: 960, height: 100)
        myScrollView.delegate = self
        myScrollView.isPagingEnabled = true
    }

    @IBAction func pageAction(_ sender: Any) {

        //when user taps pageControl update scroll view bounds
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
        
        
        print(myScrollView.bounds)
        //update page control
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
    
    

    
    
    //MARK: Button Actions
    
    //call bonnie
    
    @IBAction func call1(_ sender: Any) {
        playSound(soundFile: "call1")
    }
    
    @IBAction func call2(_ sender: Any) {
        playSound(soundFile: "call2")
    }
    
    @IBAction func call3(_ sender: Any) {
        playSound(soundFile: "call3")
    }
    
    @IBAction func call4(_ sender: Any) {
        playSound(soundFile: "call4")
    }
    
    @IBAction func call5(_ sender: Any) {
        playSound(soundFile: "call5")
    }
    
    @IBAction func call6(_ sender: Any) {
        playSound(soundFile: "call6")
    }
    
    @IBAction func call7(_ sender: Any) {
        playSound(soundFile: "call7")
    }
    
    @IBAction func call8(_ sender: Any) {
        playSound(soundFile: "call8")
    }
    
    
    
    
    
    //discipline bonnie
    
    @IBAction func d1(_ sender: Any) {
        playSound(soundFile: "d1")
    }
    
    @IBAction func d2(_ sender: Any) {
        playSound(soundFile: "d2")
    }
    
    @IBAction func d3(_ sender: Any) {
        playSound(soundFile: "d3")
    }
    
    @IBAction func d4(_ sender: Any) {
        playSound(soundFile: "d4")
    }
    
    @IBAction func d5(_ sender: Any) {
        playSound(soundFile: "d5")
    }
    
    @IBAction func d6(_ sender: Any) {
        playSound(soundFile: "d6")
    }

    @IBAction func d7(_ sender: Any) {
        playSound(soundFile: "d7")
    }
    

    
    
    
    
    
    
    //love bonnie
    
    
    @IBAction func l1(_ sender: Any) {
        playSound(soundFile: "l1")
    }
    
    @IBAction func l2(_ sender: Any) {
        playSound(soundFile: "l2")
    }
    @IBAction func l3(_ sender: Any) {
        playSound(soundFile: "l3")
    }
    
    @IBAction func l4(_ sender: Any) {
        playSound(soundFile: "l4")
    }
    
    @IBAction func l5(_ sender: Any) {
        playSound(soundFile: "l5")
    }
    @IBAction func l6(_ sender: Any) {
        playSound(soundFile: "l6")
    }
    @IBAction func l7(_ sender: Any) {
        playSound(soundFile: "l7")
    }
    
    @IBAction func l8(_ sender: Any) {
        playSound(soundFile: "l8")
    }
    
    
    
    func playSound(soundFile:String) {
        
        let path = Bundle.main.path(forResource: soundFile, ofType:"mp3")!
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
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

