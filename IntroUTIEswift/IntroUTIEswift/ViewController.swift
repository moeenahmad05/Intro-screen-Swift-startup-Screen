///
//  AppDelegate.swift
//  IntroUTIEswift
//
//  Created by Moeen Ahmad on 21/02/2019.
//  Copyright © 2019 Moeen Ahmad. All rights reserved.
//

import UIKit
import IntroScreen

class ViewController: UIViewController {

    
    @IBAction func startIntroTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "startIntro", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "startIntro":
            let destination = segue.destination as! IntroViewController
            destination.introDataSource = self
        default:
            break
        }
    }
    
 
}

extension ViewController:IntroDataSource{
    var numberOfPages: Int {
        return 3
    }
    
    var fadeOutLastPage: Bool {
        return false
    }
    
    func viewController(at index: Int) -> IntroPageViewController? {
        switch index {
        case 0:
            return DefaultIntroPageViewController.getInstance(
                index: index,
                hue: 80/360,
                title: "1st  page",
                subtitle: "This is the first page.",
                image: UIImage(named: "one")
            )
        case 1:
            return DefaultIntroPageViewController.getInstance(
                index: index,
                hue: 160/360,
                title: "2nd page",
                subtitle: "This is the second page.",
                image: UIImage(named: "two")
            )
        case 2:
            return DefaultIntroPageViewController.getInstance(
                index: index,
                hue: 340/360,
                title: "3rd page",
                subtitle: "This is the third page.",
                image: UIImage(named: "three")
               
               
            )
        
            
            
            
        default:
            return nil
        }
    }
}
