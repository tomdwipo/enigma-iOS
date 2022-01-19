//
//  NextViewController.swift
//  DITest
//
//  Created by Tommy on 18/01/22.
//

import UIKit
import RxSwift
import RxCocoa


class NextViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel: NextViewModel?
    let dispose = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?
            .resultTxt
            .observe(on: MainScheduler.instance)
            .bind(to: textLabel.rx.text)
            .disposed(by: dispose)
//          viewModel?
//            .resultTxt
//            .observe(on: MainScheduler.instance)
//            .subscribe({ result in
//                self.textLabel.text = result.element
//            })
//            .disposed(by: dispose)
            
        
        // Do any additional setup after loading the view.
    }


    @IBAction func tapped(_ sender: Any) {
        viewModel?.changeText()
    }
    

}
