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
	var audioRecorder: AVAudioRecorder!
	var audioSession: AVAudioSession!
	var audioPlayer: AVAudioPlayer!
	var alertController: UIAlertController!
	
	@IBOutlet weak var recordButtonOut: UIButton!
	
	@IBOutlet weak var playButtonOut: UIButton!
	
	@IBOutlet weak var sendButtonOut: UIButton!
	
	var recordButton: UIButton!
	var playButton: UIButton!
	var sendButton: UIButton!
	
	override func viewDidLoad()
	{
		super.viewDidLoad()
		

		do
		{
			try audioSession.setCategory(.playAndRecord, mode: .default)
			try audioSession.setActive(true)
			audioSession.requestRecordPermission()
				{ [unowned self] allowed in DispatchQueue.main.async
					{
						if allowed
						{
							self.loadRecordingUI()
						}
						else
						{
							print("frig it brokje")
						}
					}
			}
		}
		catch
		{
			print("ah rats is busted")
		}
	}
	
	func loadRecordingUI()
	{
		recordButton = recordButtonOut
		playButton = playButtonOut
		sendButton = sendButtonOut
	}
	
	func getDocumentsDirectory() -> URL
	{
		let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
		return paths[0]
	}
	
	func record()
	{
		let audioFilename = getDocumentsDirectory().appendingPathComponent("recording.wav")
		
		let settings = [
			AVFormatIDKey:
		]
		
		do
		{
			audioRecorder = try AVAudioRecorder(url: audioFilename, settings: settings)
			audioRecorder.record()
			
			recordButton.setTitle("Stop", forL .normal)
		}
		catch
		{
			finishRecording(success: false)
		}
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
		
	}
	
	@IBAction func playButtonTouch(_ sender: UIButton)
	{
	
	}
	
	@IBAction func recordButtonTouch(_ sender: UIButton)
	{
		
		if(!audioRecorder.isRecording)
		{
			audioRecorder.record()
		}
		else
		{
			audioRecorder.pause()
		}
		
	}
	

}

