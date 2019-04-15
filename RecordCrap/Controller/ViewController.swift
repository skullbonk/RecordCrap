//
//  ViewController.swift
//  RecordCrap
//
//  Created by Fairbanks, Reagan on 4/8/19.
//  Copyright © 2019 CTEC. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{
	var audioRecorder:AVAudioRecorder?
	var audioPlayer:AVAudioPlayer?
	var alertController:UIAlertController?
	
	@IBOutlet weak var sendButtonOut: UIButton!
	
	@IBOutlet weak var playButtonOut: UIButton!
	
	@IBOutlet weak var recordButtonOut: UIButton!
	
	func record()
	{
		audioRecorder.record()
		
	}
	
	func play()
	{
		
	}
	
	func send()
	{
	
	}
	
	func displayShareSheet(sender:UIView)
	{
	
	}
	
	
	@IBAction func sendButtonTouch(_ sender: UIButton)
	{
		let activityController = UIActivityViewController(activityItems: [recordButtonOut.], applicationActivities: nil)
		present(activityController, animated: true, completion: nil)
	}
	
	@IBAction func playButtonTouch(_ sender: UIButton)
	{
		
	}
	
	@IBAction func recordButtonTouch(_ sender: UIButton)
	{
		audioRecorder.record()
		
	}
	

}

