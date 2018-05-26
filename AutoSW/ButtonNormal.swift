//
//  ButtonNormal.swift
//  AutoSW
//
//  Created by sunx on 2018/5/23.
//  Copyright © 2018年 sunx. All rights reserved.
//

import UIKit
import ChameleonFramework

class ButtonNormal: UIButton {

    private var isSizeChanging = false
    private let statedView = UIView()

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.layer.borderWidth = 1
        self.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        self.layer.shadowOpacity = 0.75
        self.layer.shadowColor = UIColor.clear.cgColor
        self.titleLabel?.lineBreakMode = .byWordWrapping
        self.titleLabel?.numberOfLines = 0
        self.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
        self.titleLabel?.textAlignment = .center
        self.adjustsImageWhenDisabled=false
        self.adjustsImageWhenHighlighted=false
        self.setupMove()

        self.addSubview(statedView)
        statedView.frame = CGRect(x: -4, y: -4, width: 8, height: 8)
        statedView.backgroundColor = UIColor.red
        statedView.layer.cornerRadius = 4
        statedView.isHidden = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)

        if touches.count == 1, let tch = touches.first {

            let pt = tch.location(in: self)

            let rectSize = CGRect(x: frame.size.width-16,
                                  y: frame.size.height-16,
                                  width: 16, height: 16)

            self.isSizeChanging = rectSize.contains(pt)
        }
    }

    override var isSelected: Bool {
        get {
            return super.isSelected
        }
        set {

            statedView.isHidden = !newValue

            super.isSelected = newValue
        }
    }
}

extension ButtonNormal {

    func setupMove() {

        let pan = UIPanGestureRecognizer(target: self, action: #selector(panGest(gest:)))
        self.addGestureRecognizer(pan)
    }

    @objc
    func panGest(gest:UIPanGestureRecognizer) {

        if self.isSelected == false {
            self.isSizeChanging = false
            return
        }

        switch gest.state {

        case .began:

            break

        case .changed:

            let translate = gest.translation(in: nil)

            var nFm = self.frame

            if isSizeChanging {

                nFm.size.width += translate.x/sclar
                nFm.size.height += translate.y/sclar
            } else {
                nFm.origin.x += translate.x/sclar
                nFm.origin.y += translate.y/sclar
            }

            self.frame = nFm

            gest.setTranslation(CGPoint.zero, in: nil)

            if isSizeChanging {
                self.setNeedsDisplay()
            }

        default:
            self.isSizeChanging = false
            break
        }

    }
}

extension ButtonNormal {

    func export(_ btn:ButtonNormal, _ indexSup: Int) -> (String ,String){


        var index = indexSup

        var str1 = "\nlet button\(index) = UIButton(frame: CGRect(x: \(btn.frame.minX),y: \(btn.frame.minY), width: \(btn.frame.width), height: \(btn.frame.height)))"

        var str = ""

        str += "\nbutton\(index).layer.borderWidth = \(btn.layer.borderWidth)"
        str += "\nbutton\(index).alpha = \(btn.alpha)"

        if let col = btn.backgroundColor {
            str += "\nbutton\(index).backgroundColor = UIColor(hexString: \"\(col.hexValue()!)\")"
        }

        if let col = btn.layer.borderColor {
            str += "\nbutton\(index).layer.borderColor = UIColor(hexString: \"\(UIColor(cgColor: col).hexValue()!)\").cgColor"
        }

        if let col = btn.titleLabel?.textColor {
            str += "\nbutton\(index).setTitleColor(UIColor(hexString: \"\(col.hexValue()!)\"), for: .normal)"
        }

        if let str2 = btn.titleLabel?.text {
            str += "\nbutton\(index).setTitle(\"\(str2)\", for: .normal)"
        }

        if let pt = btn.titleLabel?.font.pointSize {
            str += "\nbutton\(index).titleLabel?.font = UIFont.systemFont(ofSize: \(pt))"
        }

        if let col = btn.layer.shadowColor {
            str += "\nbutton\(index).layer.shadowColor = UIColor(hexString: \"\(UIColor(cgColor: col).hexValue()!)\").cgColor"
        } else {
            str += "\nbutton\(index).layer.shadowColor = UIColor.clear.cgColor"
        }

        str += "\nbutton\(index).layer.shadowOffset = CGSize(width: \(btn.layer.shadowOffset.width), height: \(btn.layer.shadowOffset.height))"

        str += "\nbutton\(index).layer.shadowRadius = \(btn.layer.shadowRadius)"
        str += "\nbutton\(index).layer.shadowOpacity = \(btn.layer.shadowOpacity)"
        str += "\nbutton\(index).layer.cornerRadius = \(btn.layer.cornerRadius)"

        if self.clipsToBounds {
            str += "\nbutton\(index).clipsToBounds = true"
        }

        if 0 != self.imageEdgeInsets.left {
            let v = self.imageEdgeInsets.left
            str += "\nbutton\(index).imageEdgeInsets = UIEdgeInsets(top: \(v), left: \(v), bottom: \(v), right: \(v))"
        }

        if self.titleLabel?.textAlignment == .left {

            str += "\nbutton\(index).titleLabel?.textAlignment = .left"

        } else if self.titleLabel?.textAlignment == .right {

            str += "\nbutton\(index).titleLabel?.textAlignment = .right"
        } else {
            
            str += "\nbutton\(index).titleLabel?.textAlignment = .center"
        }

        index *= 10

        btn.subviews.forEach { (view) in
            if let v = view as? ButtonNormal {

                let rt = v.export(v, index)

                str += "\nbutton\(index/10).addSubview(button\(index))"
                str += rt.1
                str1 += rt.0
                index += 1
            }
        }

        return (str1, str)
    }
}
