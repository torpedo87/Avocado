//
//  SceneCoordinatorType.swift
//  HangulTracing
//
//  Created by junwoo on 2018. 4. 4..
//  Copyright © 2018년 samchon. All rights reserved.
//

import UIKit
import RxSwift

protocol SceneCoordinatorType {
  
  @discardableResult
  func transition(to scene: Scene, type: SceneTransitionType) -> Completable
  
  @discardableResult
  func pop(animated: Bool) -> Completable
}

extension SceneCoordinatorType {
  @discardableResult
  func pop() -> Completable {
    return pop(animated: true)
  }
}
