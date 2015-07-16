//
//  GameScene.swift
//  SwiftJump
//
//  Created by 田山　由理 on 2015/07/15.
//  Copyright (c) 2015年 Yuri Tayama. All rights reserved.
//

import SpriteKit
//追加したフレームワーク、Coremotionを使えるように、importする
import CoreMotion

class GameScene: SKScene {
    
    //加速度(傾きや回転等)のデータを取り出すCMMotionManagerクラスを格納する変数
    var motionManager: CMMotionManager!
    
    override func didMoveToView(view: SKView) {
        
        //CMMotionManagerを作成
        motionManager = CMMotionManager()
        
        //加速度の値の取得する間隔を設定
        motionManager.accelerometerUpdateInterval = 1.0
        
        //ハンドラを設定
        let accelerometerHandler:CMAccelerometerHandler = {
            //■■■ここの書き方よくわかってない■■■
            (data:CMAccelerometerData!, reeor:NSError!) -> Void in
            
            println("x:\(data.acceleration.x)  y:\(data.acceleration.y) z:\(data.acceleration.z)")
        }
        
        //センサーを取得開始し、上記で設定したハンドラを呼び出し、ログを表示する
        motionManager.startAccelerometerUpdatesToQueue(NSOperationQueue.currentQueue(), withHandler:accelerometerHandler)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {

    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
