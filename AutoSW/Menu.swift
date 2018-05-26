//
//  Menu.swift
//  AutoSW
//
//  Created by sunx on 2018/5/24.
//  Copyright © 2018年 sunx. All rights reserved.
//

import UIKit
import SwiftyTimer
import DKImagePickerController

enum MenuType {
    case color
    case size
    case input
    case type
    case title
}

let testInputStr = """
我们都是平凡人，不必有太多卑微;当别人疏忽或遗忘你的时候，无须悲观难过，大家都在一门心思往上爬，没人可以一直陪着你;当你看到别人得意微笑的时候，不要羡慕嫉妒，他也有泪，只不过掩饰得比你好。人最悲哀的，并不是昨天失去得太多，而是沉浸于昨天的悲哀之中；人最愚蠢的，并不是没有发现眼前的陷阱，而是第二次又掉了进去；人最寂寞的，并不是想等的人还没有来，而是这个人已从心里走了出去。
一叶扁舟，蕴含多少离情别意，远看着舟上人影离江心越来越远，心中便有些苦涩和心酸。离别是一种无法言喻的苦楚，虽不希望有，却也不得无奈接受。离别是那绕耳的琴声，拨动在手心之间，也可以变得美妙无比。离别如飘零于空中的叶，带来了一段分别的折磨，浓郁了思愁。离别是你我相隔一桥之间，却不得相见，只能苦苦的在对岸傻傻的张望着。

生活总有许多无奈，总有太多太多不尽人意，故天下无不散之筵席，纵有万般不舍，也终逃不过曲终人散。两个情谊深厚的人分开，犹如暴风骤雨的疯狂颤动，仿佛世界都变得冷清死寂，让人落寞不堪。离别，一江冬水的冷冰，一堆落叶的凄凉，轻轻触过之间，留下一抹清凉，余下的感伤。

故事可以有好多不同的开始，最终却只能有一种结局，我们可以设计好起点，却改变不了终点，结局总是以伤感与不舍谢幕。不要害怕结局，因为结局又何尝不是另一个开始呢。离别时，我们可以笑着挥手告别，留下美好的背影，和那暖暖的斜阳相互辉映。离别，不再有刹那的心痛，心中保留的是那句珍重的暖心。因为有远方的牵挂，才更有生活的期待，期待明天，期待未来。落花凋零并非无情，繁花散尽也不会满心悲楚。看天上云卷云舒，离别时纵使百感交集，也能挥手潇洒的转身。

一个人的清晨，轻纱薄雾，鸟鸣阵阵，独自走一段小路，告别浮华三千，只是沉醉在这宁静的清晨，如饮一杯淡淡的清茶，泛江湖悠悠，洒脱自在。没有烦忧，也无惆怅，就这么悠哉的走在小路上抛下所有世俗凡情。

所有悲欢离合都和月的阴晴圆缺一般，都是必不可免的，只有欣然接受才不会陷入感情的漩涡之中，结局早已注定，重要的是我们能不能在结局之前把过程演绎的有意义，也好给我们的末尾添一笔秀丽美好的回忆。
一首歌曲，总能让人想起一段往事，想起一个人。一个微笑，一个回眸，总能留下温情的片段，留着距离仰视的挂牵。心灵的尘埃，散出暖意的实在。走过春夏秋冬，走过心的冷暖，人生的路上，遇见了我，你说便是春暖花开。

---------------那转身后的落寞

隔着天边的距离，穿过岁月的方向。柔情的明媚，平添一份温暖的感动，风尘的转角，我憋见你的身影，在转身回头的时刻。与你的重逢，回想起曾经的青春时光，我把你明媚的暖记在心里。岁月是宁静的，我是寂寞的，想起了几年来你对我所付出的的一切，你的好，你的笑，伴着我走过了人生四季，日复一日的枯燥，是你给了我阳光的世界，给我平添了一份温馨的港湾。

冬季的雪梅花，即使狂风飞雪，还是挺立梅梢。因为心间芬芳，因为你懂我的深意，才使身边的阳光便从五指间划过了冷漠。淡墨清欢，徜过了人生的花香云片，岁月里有你四季的祝福和关怀，有你的明媚和眷念。一程山水，一纸素笺，都让我在这寒冷的冬天里，感受到暖暖的一片。我感激在这狭窄的时间，你送给我的这份真，这份明媚。

人生是画，花落是诗。那一年的春天，我说家乡满山的茶叶，是采摘的季节了。一片片绿悠悠的茶山，呈阶梯一级一级排成高低，茶树墨绿的一丛丛，我们唱着歌，身跨小竹篓，多姿多彩尽享这绿绿的山野魅力。我怀念那样的季节，你说那是大自然的魅力，既然想念，那就回家，把那种童年的色彩来个现实描绘，重新体验。

岁月的沉淀，沿着人生那两条长长的轨迹，心又似乎回到年少时那抹恬淡的青春，明朗的天空，和煦的阳光，素装的女子，圆圆润红的脸，脖子上一条白色的围巾，也似乎洁白的一尘不染，洋溢青春的可爱，你说你把我青春的容颜记在了心间。白云蓝天，我把时光寄给了不堪，10多年不曾联系，我说我已经老了容颜，已不如当年笑容恬淡。岁月的痕迹已将沧桑写满，你说你老的比我快，老的让我认不出来。

拥有了我，便是生命里清澈的暖，如果上天能让回到过去，如果人生可以重来，你说那一场缤纷的相逢，不会再让走远。我一直躲在围城的边缘，把你的温情装在心间，不敢迈出一步，我怕我尘封的心给了你期待的失望。我麻木的身躯，再也经不起风尘的碎落。于是，我锁住了红尘，把情感锁在了灰色的记忆，朝朝暮暮，我愿意就这样与自己孤单到无声。

心，依着你的眷念，在这静静的夜，回想错过的青春，错过的爱情。回想红尘中的一次擦肩，宛如天地初开的轮回，都藏着山盟海誓的诺言。亿往昔，你那青春的呢喃还在耳畔，那熟悉的声音不染尘凡，距离却在我的天涯咫尺间。情感的和弦一直行走，朝朝暮暮的无可取代，你说了我们真实存在的相遇过，你只是不愿意打扰我的生活。

香墨春暖，我就在你的尘埃里开花，你在不远处默默的关怀。倾诉着青春的岁月，我不敢说心念，我怕转身不回的语言疼了你的执念，明明知道，我就是你心里那一抹静止的蔚蓝。你不舍尘埃，山盟海誓太远，我只是想说，有这份感念早已足矣，有一份执念和守望就够，素心轻念，我的心为你真实的吟唱，清风明月，我已将你记入心中。

每日简单的生活，静静行走尘间，家日琐事，也会忙的焦头烂额，生活仍在平淡中循环，不起半点波浪，我来由转去。这个冬季，想你多年的温暖，厚厚的光阴，寄满了给我的挂牵。那么平凡的你，那么炙热的深情，让我无法怎能不去怀念？尘缘如海，安静，平淡。你就如满天星光，伴着我淡淡悠远，陪着着我境过千帆，漂泊从此有了依靠，你的温柔倚在我的港湾。

分别难相逢，岁月如流水，在熟悉的街角相遇，是一场烟花的美。你说时过境迁，我依然是那样温柔细语，暖暖的心凝结在告别的时光，是缘分，让你站在最初的地方，看着我的起落，固执连着倔犟。时光就那么一指流沙，你说今生会怎么错落了我？如果人生可以重来，你一定站在我的前方，以风华的姿态，等着我的出现。

一份真情与温馨，就这样念在了心底，沉淀生命里无数幸福渴望。曾经有人说，痴傻的人，是幸福的边缘人，在自己的世界里手舞足蹈，没有风雨泥泞，时光也不紧不慢。我慢慢咀嚼，细细品味，人生这场宿命，怀揣快乐，生活里需要一份倾诉的包容，需要一份诚实的理解，给我开阔的心境，陪着灿烂的阳光，你若一直所在，我便不会在风尘里走散，我便心怡安暖。

沿着记忆的归途，守着这一生的清欢，岁月凝香，隐去了光阴，却老了容颜。轻轻地依着你的微笑，细想着你的每一句关怀。人生如初，一场千人千遇，在这个疲惫的旅途中，心怡静，你说我只能成为你的风景，一切都注定了无力去改变。当一切都成为往事，当我用心描写曾经的年段，你可知道，那来不及，没有说出口的言语，陪着时光的消磨，淡漠了痕迹。

张开寂寞如花的念，将自己孤独的更深。心，就像一朵肃静的小花，藏于百层掩盖之中，摇曳孤独的身姿，在婉约着沧桑的清香里绽放。人生如梦，尘缘花开花谢，风过流水的光阴，在沉默中越走越远，相遇如一场繁华，在最美的年代遇见你，却在过往的繁华里回忆，此情依依，转身了便是距离。尘缘彼岸，生命里飘渺烟雨，我们却是隔了岁月与光阴。

情愫于眉间，不忘你的念，曾经倾情的相遇，如今落在记忆的望穿。你的廓然，你的至善至美，连同那纯净素白的青春，都将繁华萦绕，仅有的，只是回忆的相思。安与心灵一隅，倾透云水之间，隐没的留念，倾听生命赋予的绵长与短暂，我站在另一端的方向，凝视望尘外，花落不知去向，花落写满秋寒。

深情过往，和着弦韵幽然的曲调，伴着流年轻轻浅唱。牵念便是幸福，这个人生，有我陪着，有你念着，足矣静好，无憾也无悔。寄岁月，与着一份牵念温暖着感动，我相信，并也执着的肯定，你会陪着我走过岁月的白头，穿过千秋。
"""

class Menu: UIControl,
    UICollectionViewDataSource,
    UICollectionViewDelegate,
UICollectionViewDelegateFlowLayout,
 UITextFieldDelegate{

    static var shared = Menu()

    private var itemCount = TypeCell.itemTitle.count
    private var identify = "TypeCell"
    private var toolbar:UIToolbar!
    private var button:ButtonNormal?
    private var collectionView:UICollectionView!
    private let input = UITextField()
    private let titleLab = UILabel()

    var type:MenuType = MenuType.type
    {
        didSet {

            switch type {
            case .color:
                itemCount = ColorCell.colors.count
                identify = "ColorCell"

            case .size:
                itemCount = SizeCell.items.count
                identify = "SizeCell"

            case .input:
                itemCount = InputTextCell.itemInputText.count
                identify = "InputTextCell"

            case .type:
                itemCount = TypeCell.itemTitle.count
                identify = "TypeCell"

            case .title:
                itemCount = InputTitleCell.itemInputText.count
                identify = "InputTitleCell"
                break
            }

            collectionView.reloadSections([0])
        }
    }

    init() {

        super.init(frame: CGRect(x: 0,
                                 y: UIScreen.main.bounds.height*0.6,
                                 width: UIScreen.main.bounds.width,
                                 height: UIScreen.main.bounds.height*0.4))


        self.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.setupCollectionView()
        self.setupToolbar()

        Timer.every(0.5) {
            self.updateToolbar()
        }
    }

    func setupCollectionView() {


        let v = UICollectionViewFlowLayout()
        v.estimatedItemSize = CGSize(width: 48, height: 48)

        collectionView = UICollectionView(frame: CGRect(x: 0,
                                                        y: 44,
                                                        width: frame.width,
                                                        height: frame.height-44), collectionViewLayout: v)

        self.addSubview(collectionView)
        collectionView.backgroundColor = #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1).withAlphaComponent(0.85)
        collectionView.register(ColorCell.self, forCellWithReuseIdentifier: "ColorCell")
        collectionView.register(SizeCell.self, forCellWithReuseIdentifier: "SizeCell")
        collectionView.register(TypeCell.self, forCellWithReuseIdentifier: "TypeCell")
        collectionView.register(InputTextCell.self, forCellWithReuseIdentifier: "InputTextCell")
        collectionView.register(InputTitleCell.self, forCellWithReuseIdentifier: "InputTitleCell")

        collectionView.dataSource = self
        collectionView.delegate = self
    }

    func setupToolbar() {

        toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 44))

        self.addSubview(toolbar)
        self.addSubview(titleLab)

        let sp = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        sp.width = 16

        input.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        input.layer.cornerRadius = 8
        input.delegate = self
        input.font = UIFont.systemFont(ofSize: 13)
        input.enablesReturnKeyAutomatically = true
        input.adjustsFontSizeToFitWidth = true


        toolbar.items = [
            sp,
            UIBarButtonItem(title: "", style: .plain, target: nil, action: nil),
            UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil),
            UIBarButtonItem(customView: input),
            sp,
            UIBarButtonItem(image: #imageLiteral(resourceName: "删除"), style: .plain, target: self, action: #selector(remove)),
            sp,
            UIBarButtonItem(image: #imageLiteral(resourceName: "关闭"), style: .plain, target: self, action: #selector(hide)),
            sp
        ]

        input.snp.makeConstraints { (make) in
            make.width.equalTo(96)
            make.height.equalTo(28)
        }

        titleLab.snp.makeConstraints { (make) in
            make.left.equalTo(8)
            make.top.equalTo(0)
        }

        toolbar.items?[1].tintColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)

        titleLab.font = UIFont.systemFont(ofSize: 8)

    }

    @objc
    func remove() {
        button?.removeFromSuperview()
        button = nil

        self.hide()
    }


    func show(v:ButtonNormal?)  {

        button = v

        if Menu.shared.superview == nil {
            UIApplication.shared.keyWindow?.addSubview(Menu.shared)
        }

        updateToolbar()

        Menu.shared.isHidden = false
    }

    func typeIndex() -> Int {

        if let item = titleLab.text,
            let index = TypeCell.itemTitle.index(of: item) {

            return index
        }

        return -1
    }

    func updateTypeTitle(_ str:String) {

        toolbar.items?[1].tintColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        toolbar.items?[1].image = nil
        toolbar.items?[1].title = String(str.prefix(8))
    }

    func updateTypeImage(_ color:UIColor) {


        toolbar.items?[1].image = #imageLiteral(resourceName: "yuan").withRenderingMode(.alwaysTemplate)
        toolbar.items?[1].tintColor = color
    }

    func selectSize(_ value:Float ) {

        let fl = CGFloat(value)

        switch typeIndex() {

        case 0 :

            if fl+44>0 && fl<UIScreen.main.bounds.width+44 {
                button?.frame.origin.x = fl
            }

        case 1:
            if fl+44>0 && fl<UIScreen.main.bounds.height+44 {
                button?.frame.origin.y = fl
            }

        case 2:
            if fl>0 && fl<UIScreen.main.bounds.width+44 {
                button?.frame.size.width = fl
            }

        case 3:
            if fl>0 && fl<UIScreen.main.bounds.height+44 {
                button?.frame.size.height = fl
            }

        case 4:

            if fl>=0 && fl<UIScreen.main.bounds.width {
                button?.layer.borderWidth = fl
            }

        case 5:

            if fl>=0 && fl<=1 {
                button?.alpha = fl
            }

        case 10:

            if fl>4 && fl<100 {
                button?.titleLabel?.font = UIFont.systemFont(ofSize: fl)
            }

        case 12: button?.layer.shadowOffset.width = fl

        case 13: button?.layer.shadowOffset.height = fl

        case 14: button?.layer.shadowRadius = fl

        case 15: button?.layer.shadowOpacity = value

        case 16:

            if fl>=0 {
                button?.layer.cornerRadius = fl
            }

        case 19:

            if fl>=0 {
                button?.imageEdgeInsets = UIEdgeInsets(top: fl, left: fl, bottom: fl, right: fl)
            }

        default: break
        }


        updateToolbar()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {


        self.textFieldDidEndEditing(textField)

        return false
    }

    func textFieldDidEndEditing(_ textField: UITextField) {

        guard let str = textField.text, str.isEmpty == false else {
            return
        }

        switch type {

        case .color:

            if let color = UIColor.init(hexString: str) {
                self.selectColor(color)
            }

            break
        case .size:

            if let sz = Float(str) {
                self.selectSize(sz)
            }

            break
        case .title:

            button?.setTitle(str, for: .normal)

            break
        default:break
        }

        updateToolbar()

        textField.text = ""
        textField.becomeFirstResponder()
        type = .type
    }

    func selectColor(_ value:UIColor) {

        switch typeIndex() {

        case 6: button?.backgroundColor = value

        case 7: button?.setTitleColor(value, for: .normal)

        case 8: button?.layer.borderColor = value.cgColor

        case 11: button?.layer.shadowColor = value.cgColor

        default: break
        }

        updateToolbar()
    }

    func updateToolbar(_ index:Int = -1) {

        if -1 != index {
            titleLab.text = TypeCell.itemTitle[index]
        }

        if let view = button {

            switch typeIndex() {
            case 0: updateTypeTitle("\(view.frame.minX)")

            case 1: updateTypeTitle("\(view.frame.minY)")

            case 2: updateTypeTitle("\(view.frame.width)")

            case 3: updateTypeTitle("\(view.frame.height)")

            case 4: updateTypeTitle("\(view.layer.borderWidth)")

            case 5: updateTypeTitle("\(view.alpha)")

            case 6:

                if let col = view.backgroundColor {
                    updateTypeImage(col)
                } else {
                    updateTypeTitle("NULL")
                }

            case 7:

                if let col = view.titleLabel?.textColor {
                    updateTypeImage(col)
                } else {
                    updateTypeTitle("NULL")
                }

            case 8:
                if let col = view.layer.borderColor {
                    updateTypeImage(UIColor(cgColor:col))
                } else {
                    updateTypeTitle("NULL")
                }

            case 9:

                if let str = view.titleLabel?.text?.prefix(8) {
                    updateTypeTitle(String(str))
                } else {
                    updateTypeTitle("NULL")
                }


            case 10:

                if let str = view.titleLabel?.font.pointSize {
                    updateTypeTitle("\(str)")
                } else {
                    updateTypeTitle("NULL")
                }

            case 11:
                if let col = view.layer.shadowColor {
                    updateTypeImage(UIColor(cgColor:col))
                } else {
                    updateTypeTitle("NULL")
                }

            case 12: updateTypeTitle("\(view.layer.shadowOffset.width)")


            case 13: updateTypeTitle("\(view.layer.shadowOffset.height)")

            case 14: updateTypeTitle("\(view.layer.shadowRadius)")

            case 15: updateTypeTitle("\(view.layer.shadowOpacity)")

            case 16: updateTypeTitle("\(view.layer.cornerRadius)")

            case 18: updateTypeTitle("\(view.clipsToBounds)")

            case 19: updateTypeTitle("\(view.imageEdgeInsets.top)")

            default:
                break
            }
        }
    }

    @objc
    func hide() {

        if self.type != .type {
            self.type = .type
        } else {
            Menu.shared.isHidden = true
        }
    }

    func selectImage() {

        guard let btn = self.button else {
            return
        }

        let vc = DKImagePickerController()

        vc.assetType = .allPhotos
        vc.singleSelect = true
        vc.didSelectAssets = { asset in

            asset.first?.fetchImageWithSize(btn.frame.size, completeBlock: { (img, _) in

                btn.setImage(img, for: .normal)
            
            })
        }

        UIApplication.shared.keyWindow?.rootViewController?.present(vc, animated: true, completion: nil)
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {

        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return itemCount
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identify, for: indexPath)

        (cell as? CollectionCellSetup)?.setup(indexPath)

        return cell

    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        switch type {
        case .type:

            switch indexPath.row {

            case 0,1,2,3,4,5,10,12,13,14,15,16, 19:
                type = .size

            case 6,7,8,11:
                type = .color

            case 9:
                type = .title

            case 17:
                self.selectImage()

            case 18:
                button?.clipsToBounds = !(button?.clipsToBounds ?? true)

            case 20:
                button?.titleLabel?.textAlignment = .left

            case 21:
                button?.titleLabel?.textAlignment = .center

            case 22:
                button?.titleLabel?.textAlignment = .right

            default:
                break
            }


            updateToolbar(indexPath.row)

        case .color:

            selectColor(ColorCell.colors[indexPath.row])

            break
        case .size:

            if indexPath.row == itemCount-1 {
                type = .input
            } else if let fl = Float(SizeCell.items[indexPath.row]) {
                    selectSize(fl)
            }

        case .title:

            if let count = Int(InputTitleCell.itemInputText[indexPath.row]) {

                button?.setTitle(String(testInputStr.prefix(count)), for: .normal)
            }

        case .input:

            if indexPath.row == 11 {
                InputTextCell.itemInputText[12] = ""
            }

            if indexPath.row < 9 {
                InputTextCell.itemInputText[12].append("\(indexPath.row+1)")
            }

            if indexPath.row == 9,InputTextCell.itemInputText[12].isEmpty == false {
                InputTextCell.itemInputText[12].append("0")
            }

            if indexPath.row == 10,InputTextCell.itemInputText[12].contains(".") == false {
                InputTextCell.itemInputText[12].append(".")
            }

            if indexPath.row != 12 {
                collectionView.reloadItems(at: [IndexPath(row: 12, section: 0)])
            }

            if let fl = Float(InputTextCell.itemInputText[12]) {
                InputTextCell.itemInputText[12] = ""
                selectSize(fl)
            }
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

protocol CollectionCellSetup {
    func setup(_ indexPath: IndexPath)
}

class ColorCell: UICollectionViewCell, CollectionCellSetup {

    static let colors = [#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1),#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1),#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1),#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1),#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
                         #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1),#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1),#colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1),#colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1),#colorLiteral(red: 0.3098039329, green: 0.2039215714, blue: 0.03921568766, alpha: 1),#colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1),
                         #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1),#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1),#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1),#colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1),#colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1),#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1),
                         #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1),#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1),#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1),#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1),#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1),#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1),
                         #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1),#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1),#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1),#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1),#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1),#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1),
                         #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1),#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1),#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1),#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1),#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1),
                         #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1),#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1),#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1),#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1),
                         #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1),#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1),#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1),#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1),#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)]


    lazy var view:UILabel = {

        let lab = UILabel()
        lab.font = UIFont.systemFont(ofSize: 8)
        lab.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
        lab.textAlignment = .center
        lab.clipsToBounds = true

        lab.adjustsFontSizeToFitWidth = true
        return lab
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)


        self.setupView()
        self.setupSelected()
    }

    func setupSelected() {

        let v = UIView()
        v.layer.cornerRadius = 24
        v.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        self.selectedBackgroundView = v
    }

    func setupView() {
        view.layer.cornerRadius = 20
        contentView.addSubview(view)

        view.snp.makeConstraints({
            $0.left.top.equalTo(4)
            $0.right.bottom.equalTo(-4)
            $0.width.height.equalTo(40)
        })
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setup(_ indexPath: IndexPath) {
        view.backgroundColor = ColorCell.colors[indexPath.row]
    }
}

class SizeCell: ColorCell {
    static let items = ["0.0","0.1","0.2","0.33","0.4",
                        "0.5","0.6","0.75","0.8","0.9",
                        "1","2","4","6","8","10","12",
                        "14","16","18","20","22","24","25",
                        "27","30","32","36","40","44","45",
                        "48","50","64","72","96","120","160",
                        "320","414","自定"]

    override func setup(_ indexPath: IndexPath) {
        view.text = SizeCell.items[indexPath.row]
    }
}

class InputTextCell: ColorCell {
    static var itemInputText = ["1","2","3","4","5","6","7","8","9","0",".","CE",""]

    override func setupSelected() {
    }

    override func setup(_ indexPath: IndexPath) {
        view.text = InputTextCell.itemInputText[indexPath.row]
    }
}

class TypeCell: ColorCell {

    static let itemTitle = ["x","y","width","height", "borderWidth",
                            "opacity","backgroundColor", "textColor","borderColor", "text",
                            "fontSize","shadowColor","shadowOffsetX", "shadowOffsetY", "shadowRadius",
                            "shadowOpacity","cornerRadius","image", "clipsToBounds","imageEdgeInsets",
                            "textAlignLeft","textAlignCenter","textAlignRight"]

    override func setupView() {
        view.layer.cornerRadius = 4
        view.font = UIFont.systemFont(ofSize: 10)
        contentView.addSubview(view)

        view.snp.makeConstraints({
            $0.left.top.equalTo(4)
            $0.right.bottom.equalTo(-4)
            $0.width.equalTo(72)
            $0.height.equalTo(32)
        })
    }

    override func setupSelected() {
        let v = UIView()
        v.layer.cornerRadius = 4
        v.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        self.selectedBackgroundView = v
    }

    override func setup(_ indexPath: IndexPath) {
        view.text = TypeCell.itemTitle[indexPath.row]
    }
}

class InputTitleCell: ColorCell {
    static var itemInputText = ["0","1","2","3","4","5","6","7","8","9",
                                "12","15","20","30","50","80","120","150",
                                "200","300","500","800","1000","1200","2000","3000"]


    override func setup(_ indexPath: IndexPath) {
        view.text = InputTitleCell.itemInputText[indexPath.row]
    }
}
