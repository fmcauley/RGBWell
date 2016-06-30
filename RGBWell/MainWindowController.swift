//
//  MainWindowController.swift
//  RGBWell
//
//  Created by MLS Discovery on 6/30/16.
//  Copyright © 2016 SoftwareSoFast. All rights reserved.
//

/** UI NOTE
 UIWindow
  if the window is marked "visible at launch", then it's actually created during nib loading. Otherwise, the window must be shown by code, but you'll need the outlet that was previously reported as missing, to get a reference to the window in the main nib.
 */

import Cocoa

class MainWindowController : NSWindowController {
    
    var r = 0.0
    var g = 0.0
    var b = 0.0
    let a = 1.0
    
    @IBOutlet weak var rSlider: NSSlider!
    @IBOutlet weak var gSlider: NSSlider!
    @IBOutlet weak var bSliser: NSSlider!
    
    @IBOutlet weak var colorWell: NSColorWell!
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        rSlider.doubleValue = r
        gSlider.doubleValue = g
        bSliser.doubleValue = b
        updateColor()
    }
    
    @IBAction func adjustRed(sender: NSSlider) {
        r = sender.doubleValue
        updateColor()
    }
    
    @IBAction func adjustGreen(sender: NSSlider) {
        g = sender.doubleValue
        updateColor()
    }
    
    @IBAction func adjustBlue(sender: NSSlider) {
        b = sender.doubleValue
        updateColor()
    }
    
    func updateColor() {
        let newColor = NSColor(calibratedRed: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(a))
        colorWell.color = newColor
    }
    
}
