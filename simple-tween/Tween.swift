//
//  Tween.swift
//  simple-tween
//
//  Created by AtsuyaSato on 2017/12/03.
//  Copyright © 2017年 Atsuya Sato. All rights reserved.
//

import Foundation
import RxSwift

public class Tween {
    public class func animateTo<T: Numeric>(fromValue: T, toValue: T, duration: TimeInterval, options: UIViewAnimationOptions, animations: @escaping (T) -> Void, completion: ((Bool) -> Void)?) {

        let disposeBag = DisposeBag()
        let variable = Variable<T>(fromValue)

        variable.asObservable().subscribe({ result in
            switch result.event {
            case .next(let element):
                animations(element)
            default:
                break
            }
        }).disposed(by: disposeBag)

        UIView.animate(withDuration: duration, delay: 0, options: options, animations: {
            variable.value = toValue
        }, completion: completion)
    }
}
