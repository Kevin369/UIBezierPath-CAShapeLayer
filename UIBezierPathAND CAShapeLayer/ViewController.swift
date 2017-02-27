//
//  ViewController.swift
//  UIBezierPathAND CAShapeLayer
//
//  Created by Kevin on 2017/2/25.
//  Copyright © 2017年 Kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        heardDramp()
        // Do any additional setup after loading the view, typically from a nib.
    }
    ///绘制折线图
    func darwFirstLine(){
        //创建路径
        let linePath = UIBezierPath()
        //起点
        linePath.move(to: CGPoint.init(x: 30, y: 30))
        //添加其他点
        linePath.addLine(to: CGPoint.init(x: 150, y: 150))
        linePath.addLine(to: CGPoint.init(x: 180, y: 20))
        
        
        //设施路径画布
        let lineShape = CAShapeLayer()
        lineShape.frame = CGRect.init(x: 10, y: 10, width: 350, height: 400)
        //宽度
        lineShape.lineWidth = 2
        //线条之间点的样式
        lineShape.lineJoin = kCALineJoinMiter
        //线条结尾的样式
        lineShape.lineCap = kCALineCapSquare
        //路径颜色
        lineShape.strokeColor = UIColor.red.cgColor
        //获取贝塞尔曲线的路径
        lineShape.path = linePath.cgPath
        //填充色
        lineShape.fillColor = UIColor.clear.cgColor
        //把绘制的图放到layer上   
        self.view.layer.addSublayer(lineShape)
    }
    
    ///三角形
    func drawSecLine(){
        //创建路径
        let linePath = UIBezierPath()
        //起点
        linePath.move(to: CGPoint.init(x: 30, y: 30))
        //添加其他点
        linePath.addLine(to: CGPoint.init(x: 160, y: 160))
        linePath.addLine(to: CGPoint.init(x: 140, y: 50))
        //闭合路径
        linePath.close()
        
        //设施路径画布
        let lineShape = CAShapeLayer()
        lineShape.frame = CGRect.init(x: 0, y: 0, width: 350, height: 400)
        lineShape.lineWidth = 2
        lineShape.lineJoin = kCALineJoinMiter
        lineShape.lineCap = kCALineCapSquare
        lineShape.strokeColor = UIColor.red.cgColor
        lineShape.path = linePath.cgPath
        lineShape.fillColor = UIColor.clear.cgColor
        self.view.layer.addSublayer(lineShape)
    }
    ///五角形
    func drawThreeLine(){
        
        //创建路径
        let linePath = UIBezierPath()
        //起点
        linePath.move(to: CGPoint.init(x: 100, y: 0))
        //添加其他点
        linePath.addLine(to: CGPoint.init(x: 200, y: 40))
        linePath.addLine(to: CGPoint.init(x: 160, y: 140))
        linePath.addLine(to: CGPoint.init(x: 40, y: 140))
        linePath.addLine(to: CGPoint.init(x: 0, y: 40))
        
        //闭合路径
        linePath.close()
        
        //设施路径画布
        let lineShape = CAShapeLayer()
        lineShape.frame = CGRect.init(x: 0, y: 0, width: 350, height: 400)
        lineShape.lineWidth = 2
        lineShape.lineJoin = kCALineJoinMiter
        lineShape.lineCap = kCALineCapSquare
        lineShape.strokeColor = UIColor.red.cgColor
        lineShape.path = linePath.cgPath
        lineShape.fillColor = UIColor.clear.cgColor
        self.view.layer.addSublayer(lineShape)
    }
    ///椭圆和圆
    func drawFourLine() {
        //椭圆
//        let linePath = UIBezierPath.init(ovalIn: CGRect.init(x: 0, y: 0, width: 260, height: 200))
        //圆
        let linePath = UIBezierPath.init(ovalIn: CGRect.init(x: 0, y: 0, width: 200, height: 200))
        
        let lineShape = CAShapeLayer()
        lineShape.frame = CGRect.init(x: 0, y:0, width: 260, height: 200)
        lineShape.lineWidth = 2
        lineShape.strokeColor = UIColor.red.cgColor
        lineShape.path = linePath.cgPath
        lineShape.fillColor = UIColor.clear.cgColor
        self.view.layer.addSublayer(lineShape)
        //添加动画
        let pathAnimation = CABasicAnimation.init(keyPath: "strokeEnd")
        pathAnimation.duration = 1
        pathAnimation.timingFunction = CAMediaTimingFunction.init(name: kCAMediaTimingFunctionEaseOut)
        pathAnimation.fromValue = 0
        pathAnimation.toValue = 1
        lineShape.add(pathAnimation, forKey: "strokeEndAnimation")
        
    }
    
    ///矩形
    func drawFiveLine() {
        
        //创建路径
        let linePath = UIBezierPath.init(rect: CGRect.init(x: 50, y: 50, width: 200, height: 200))
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.frame = CGRect.init(x: 0, y:0, width: 300, height: 200)
        shapeLayer.path = linePath.cgPath
        shapeLayer.lineWidth = 2
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        self.view.layer.addSublayer(shapeLayer)
        
        
        
    }
    
    func drawSixLine() {
        //四个角都是圆角
//        let path = UIBezierPath.init(roundedRect: CGRect.init(x: 50, y: 50, width: 200, height: 200), cornerRadius: 25)
        //可设置某个角是圆角
        let path = UIBezierPath.init(roundedRect: CGRect.init(x: 50, y: 50, width: 200, height: 200), byRoundingCorners: UIRectCorner.topLeft, cornerRadii: CGSize.init(width: 50, height: 0))
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.frame = CGRect.init(x: 0, y:0, width: 300, height: 300)
        shapeLayer.path = path.cgPath
        shapeLayer.lineWidth = 2
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.fillColor = UIColor.orange.cgColor
        self.view.layer.addSublayer(shapeLayer)
    }
    
    func heardDramp()  {
        let imageView = UIImageView.init(frame: CGRect.init(x: 100, y: 100, width: 100, height: 100))
        imageView.image = UIImage.init(named: "heart")
        self.view.addSubview(imageView)
        
        let baseAnimation = CABasicAnimation.init(keyPath: "transform.scale")
        baseAnimation.fromValue = NSNumber.init(value: 0.5)
        baseAnimation.toValue = NSNumber.init(value: 1.5)
        baseAnimation.duration = 1
        baseAnimation.repeatCount = MAXFLOAT
        imageView.layer.add(baseAnimation, forKey: "CQScale")
        
        
        
        
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

