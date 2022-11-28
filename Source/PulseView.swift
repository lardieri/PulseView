//
//  PulseView.swift
//
//  © 2022 Stephen Lardieri
//

import UIKit

class PulseView: UIView {

    /// Recommend: 0.2
    @IBInspectable
    public var durationIn: CGFloat = 0.0

    /// Recommend: 1.5
    @IBInspectable
    public var durationOut: CGFloat = 0.0

    /// Recommend: 1.0
    @IBInspectable
    public var delay: CGFloat = 0.0

    /// Recommend: 20.0
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }

    func pulse() {
        fadeIn() { completed in
            guard completed else {
                self.alpha = 0.0
                return
            }

            self.fadeOut(completion: self.finalCompletion(_:))
        }

    }

    private func fadeIn(completion: @escaping (Bool) -> Void) {
        UIView.animate(
            withDuration: durationIn,
            delay: 0.0,
            options: [ .curveEaseOut ],
            animations: { self.alpha = 1.0 },
            completion: completion
        )
    }

    private func fadeOut(completion: @escaping (Bool) -> Void) {
        UIView.animate(
            withDuration: durationOut,
            delay: delay,
            options: [ .curveEaseIn ],
            animations: { self.alpha = 0.0 },
            completion: completion
        )
    }

    private func finalCompletion(_ completed: Bool) {

    }

}
