//
//  ViewController.swift
//  ColorFullCircleAnimation
//
//  Created by Vaibhav Sharma on 19/03/23.
//

import UIKit

class ViewController: UIViewController {
    var circleWaveView: WaveView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        circleWaveView = WaveView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        if let circleWaveView = circleWaveView{
            circleWaveView.center = view.center
            view.addSubview(circleWaveView)
            circleWaveView.setNeedsDisplay()
        }
    
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }

}

