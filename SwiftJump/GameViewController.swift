//
//  GameViewController.swift
//  SwiftJump
//
//  Created by 田山　由理 on 2015/07/15.
//  Copyright (c) 2015年 Yuri Tayama. All rights reserved.
//

import UIKit
import SpriteKit


class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let scene = GameScene()
        
        let view = self.view as SKView
        
        view.showsFPS = true
        
        view.showNodeCount = true
        
        scene.size = view.frame.size
        
        view.presentScene(scene)
    }

    override func shouldAutorotate() -> Bool {
        return true
    }

    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.AllButUpsideDown.rawValue)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
