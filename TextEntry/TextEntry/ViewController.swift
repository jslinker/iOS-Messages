//
//  ViewController.swift
//  TextEntry
//
//  Created by Joseph Slinker on 6/15/15.
//  Copyright (c) 2015 Lucid Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	let textEntry = UITextField(frame: CGRectMake(0, 44, 300, 44))
	let textEntryViewController = UIViewController()
	
	override var inputAccessoryView: UIView? {
		get {
			self.textEntry.backgroundColor = UIColor.orangeColor()
			self.textEntryViewController.view.backgroundColor = UIColor.orangeColor()
			self.textEntryViewController.view.frame = CGRectMake(0, 44, 300, 44)
//			return self.textEntry
			self.textEntryViewController.view.addSubview(self.textEntry)
			return self.textEntryViewController.view
		}
	}
	
	override func viewDidLoad() {
	}
	
	override func canBecomeFirstResponder() -> Bool {
		return true
	}
	
	@IBAction func hideKeyboard() {
		self.textEntry.resignFirstResponder()
	}
}

