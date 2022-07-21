//
//  ViewController.swift
//  MoveToCircle
//
//  Created by Konstantyn Koroban on 17/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var circleView = makeCircle()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePanGesture))
        view.addGestureRecognizer(panGesture)
        view.addSubview(circleView)
        circleView.isHidden = true
        view.backgroundColor = .black
        
    }
    
    private func makeCircle() -> UIView {
        let circleView = UIView()
        circleView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        circleView.layer.cornerRadius = circleView.frame.width / 2
        circleView.backgroundColor = .orange
        return circleView
        
    }
    
    @objc
    private func handlePanGesture(_ sender: UIPanGestureRecognizer) {
        circleView.center = sender.location(in: sender.view)
        circleView.isHidden = false
        
    }
}


