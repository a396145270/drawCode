//
//  ViewController.swift
//  AtuoSW
//
//  Created by sunx on 2018/5/23.
//  Copyright © 2018年 sunx. All rights reserved.
//

import UIKit
import Async
import SnapKit
import JDStatusBarNotification

var sclar:CGFloat = 1

class ViewController: UIViewController {


    private weak var selectedButton:UIView?


    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

        self.selectedButton = self.view

        self.setupMove()

        Async.main(after: 0.2) {
            self.setupButton()
        }

        keyboard()
    }

    func keyboard() {
        NotificationCenter.default
            .addObserver(forName: NSNotification.Name.UIKeyboardWillChangeFrame,
                         object: nil,
                         queue: nil,
                         using: { (not:Notification) in

                            guard let nsV = not.userInfo?["UIKeyboardFrameEndUserInfoKey"] as? NSValue else {
                                return
                            }
                            let keyboardHeight = UIScreen.main.bounds.height*0.6+44-nsV.cgRectValue.minY

                            print(nsV,keyboardHeight)


                            Menu.shared.transform = CGAffineTransform(translationX: 0, y: min(0,-keyboardHeight))


            })
    }

    func exp() -> String {

        var str = ""
            var index = 1
            self.view.subviews.forEach { (view) in
                if let v = view as? ButtonNormal {

                    if v.tag == 0 {

                        let rt = v.export(v, index)


                        str += rt.0
                        str += rt.1
                        index += 1
                    }
                }
            }

        return str
    }

    func setupMove() {

        self.view.addGestureRecognizer(UIPanGestureRecognizer(target: self,
                                                              action: #selector(panGest(gest:))))


        self.view.addGestureRecognizer(UIPinchGestureRecognizer(target: self,
                                                                action: #selector(pinGest(pin:))))

        let lg = UILongPressGestureRecognizer(target: self,
                                              action: #selector(longGest(lg:)))

        lg.minimumPressDuration = 1
        
        self.view.addGestureRecognizer(lg)
    }

    @objc
    func pinGest(pin:UIPinchGestureRecognizer) {

        self.view.transform = self.view.transform.scaledBy(x: pin.scale, y: pin.scale)

        sclar = self.view.transform.a

        pin.scale = 1
    }

    @objc
    func longGest(lg:UILongPressGestureRecognizer) {

        if let btn = self.selectedButton as? ButtonNormal, let sup = btn.superview {

            let pt = lg.location(in: nil)
            let fm = sup.convert(btn.frame, to: nil)

            if lg.state == .began, fm.contains(pt) {
                self.createButton(btn)

                return
            }

        }

        self.view.transform = CGAffineTransform.identity
    sclar = 1

    }

    @objc
    func panGest(gest:UIPanGestureRecognizer) {

        let ts = gest.translation(in: nil)

        self.view.transform = self.view.transform.translatedBy(x: ts.x/sclar, y: ts.y/sclar)

        gest.setTranslation(CGPoint.zero, in: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController {

    func setupButton() {

        let button = ButtonNormal(frame: CGRect(x: 8, y: UIScreen.main.bounds.height-52, width: 44, height: 44))
        button.tag = 1
        button.setImage(#imageLiteral(resourceName: "btnAddNormal"), for: .normal)
        button.setImage(#imageLiteral(resourceName: "btnAddHigh"), for: .highlighted)
        button.layer.borderWidth = 0

        UIApplication.shared.keyWindow?.addSubview(button)

        let button2 = ButtonNormal(frame: CGRect(x: UIScreen.main.bounds.width-52,
                                                 y: UIScreen.main.bounds.height-52, width: 44, height: 44))
        button2.tag = 2
        button2.setImage(#imageLiteral(resourceName: "复制"), for: .normal)
        button2.layer.borderWidth = 0

        UIApplication.shared.keyWindow?.addSubview(button2)

        button.addTarget(self, action: #selector(addButton(_:)), for: .touchUpInside)

        button2.addTarget(self, action: #selector(addButton(_:)), for: .touchUpInside)
    }

    @objc func addButton(_ btn:ButtonNormal) {

        (self.selectedButton as? ButtonNormal)?.isSelected = false

        if 1 == btn.tag {

            if let selected = self.selectedButton {
                createButton(selected)
            } else {
                createButton(self.view)
            }

        } else if 2 == btn.tag {

            UIPasteboard.general.string = exp()

            print(exp())
            JDStatusBarNotification.show(withStatus: "已复制到剪切板！", dismissAfter: 3)

            return

        } else if btn == self.selectedButton {

            self.selectedButton = btn.superview
            
        } else {

            self.selectedButton = btn
        }

        (self.selectedButton as? ButtonNormal)?.isSelected = true


        Menu.shared.show(v: self.selectedButton as? ButtonNormal)

    }

    func createButton(_ toView:UIView) {

        let button = ButtonNormal(type: UIButtonType.custom)


        toView.addSubview(button)

        if let size = button.superview?.frame.size {
            button.frame = CGRect(x: size.width/4,
                                  y: size.height/4,
                                  width: size.width/2,
                                  height: size.height/2)
        }

        button.addTarget(self, action: #selector(addButton(_:)), for: .touchUpInside)
    }
}
