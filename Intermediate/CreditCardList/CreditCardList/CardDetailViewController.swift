//
//  CardDetailViewController.swift
//  CreditCardList
//
//  Created by 권성은 on 2021/11/11.
//

import UIKit
import Lottie

class CardDetailViewController: UIViewController {
    var promotionDetail: PromotionDetail?

    @IBOutlet weak var lottieView: AnimationView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var periodLabel: UILabel!
    @IBOutlet weak var conditionLabel: UILabel!
    @IBOutlet weak var benefitConditionLabel: UILabel!
    @IBOutlet weak var benefitDetailLabel: UILabel!
    @IBOutlet weak var benefitDateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let animationView = AnimationView(name: "money")
        self.lottieView.contentMode = .scaleAspectFit
        self.lottieView.addSubview(animationView)
        animationView.frame = self.lottieView.bounds
        animationView.loopMode = .loop
        animationView.play()
        
        guard let detail = promotionDetail else { return }
        self.titleLabel.text = """
            \(detail.companyName)카드 쓰면
            \(detail.amount)만원 드려요
            """
        self.periodLabel.text = detail.period
        self.conditionLabel.text = detail.condition
        self.benefitConditionLabel.text = detail.benefitCondition
        self.benefitDetailLabel.text = detail.benefitDetail
        self.benefitDateLabel.text = detail.benefitDate
    }
    
}
