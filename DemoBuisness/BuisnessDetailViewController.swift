//
//  ViewController.swift
//  Twitter User Interface
//
//  Created by Dean Brindley on 25/04/2015.
//  Copyright (c) 2015 Dean Brindley. All rights reserved.
//

import UIKit


let offset_HeaderStop:CGFloat = 200 - 64  // At this offset the Header stops its transformations
let distance_W_LabelHeader:CGFloat = 30.0 // The distance between the top of the screen and the top of the White Label

enum contentTypes {
    case tweets, media
}

class BuisnessDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate {
    
    // MARK: Outlet properties
    
   
    
    @IBOutlet var tableView : UITableView!{
        didSet{
            tableView.estimatedRowHeight = 100
        }
    }
    @IBOutlet weak var imageViewBookmark: UIImageView!
    @IBOutlet weak var viewBookMark: UIView!
    @IBOutlet weak var labelOpensNows: UILabel!
    @IBOutlet weak var btnReviews: UIButton!
    @IBOutlet weak var labelCat: UILabel!
    @IBOutlet var headerView : UIView!
    @IBOutlet var profileView : UIView!
    @IBOutlet var segmentedView : UIView!
    @IBOutlet var avatarImage:UIButton!
    @IBOutlet var handleLabel : UILabel!
    @IBOutlet var headerLabel : UILabel!
    
    // MARK: class properties
    
    var headerBlurImageView:UIImageView!
    var headerImageView:UIImageView!
    @IBOutlet weak var constarintHeightHeaerImages: NSLayoutConstraint!
    var contentToDisplay : contentTypes = .tweets
    
    // MARK: The view
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.contentInset = UIEdgeInsetsMake(headerView.frame.height, 0, 0, 0)
        //constarintHeightHeaerImages.constant = UIScreen.main.bounds.width * 0.568
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        // Header - Image
        
        headerImageView = UIImageView(frame: headerView.bounds)
        headerImageView?.image = UIImage(named: "header_bg")
        headerImageView?.contentMode = UIViewContentMode.scaleAspectFill
        headerView.insertSubview(headerImageView, belowSubview: headerLabel)
        
        // Header - Blurred Image
        headerBlurImageView = UIImageView(frame: headerView.bounds)
        headerBlurImageView?.image = UIImage(named: "header_bg")?.blurredImage(withRadius: 10, iterations: 20, tintColor: UIColor.clear)
        headerBlurImageView?.contentMode = UIViewContentMode.scaleAspectFill
        headerBlurImageView?.alpha = 0.0
        headerView.insertSubview(headerBlurImageView, belowSubview: headerLabel)
        let btn = UIButton(frame: CGRect(x: 4, y: 20, width: 44, height: 44))
        btn.setImage(UIImage(named: "ic_back_w"), for: .normal)
        
        UIApplication.shared.keyWindow?.addSubview(btn)
        
         //headerView.insertSubview(btn, belowSubview: headerLabel)
        
        headerView.clipsToBounds = true
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Table view processing
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        if section == 0 || section == 2 || section == 3 || section == 4{
            return 1
        }else {
            
            return 3
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return  indexPath.section == 4 ? ScreenSize.SCREEN_WIDTH * 0.5628 + 32  : UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewStaticCell", for: indexPath)
        
        return cell
        }
        else if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "InfoCell", for: indexPath)
            
            return cell
        }
            
        else if indexPath.section == 3 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "PhotoCell", for: indexPath)
                
                return cell
        }
        
        else if indexPath.section == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DealsCell", for: indexPath)
            
            return cell
        }
        
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewDynamicCell", for: indexPath)
            
            return cell
        }
        
        
        
    }
    
    // MARK: Scroll view delegate
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let offset = scrollView.contentOffset.y + headerView.bounds.height
        
        var avatarTransform = CATransform3DIdentity
        var headerTransform = CATransform3DIdentity
        
        // PULL DOWN -----------------
        
        if offset < 0 {
            
            let headerScaleFactor:CGFloat = -(offset) / headerView.bounds.height
            let headerSizevariation = ((headerView.bounds.height * (1.0 + headerScaleFactor)) - headerView.bounds.height)/2
            headerTransform = CATransform3DTranslate(headerTransform, 0, headerSizevariation, 0)
            headerTransform = CATransform3DScale(headerTransform, 1.0 + headerScaleFactor, 1.0 + headerScaleFactor, 0)
            
            
            // Hide views if scrolled super fast
            headerView.layer.zPosition = 0
            headerLabel.isHidden = true
            
        }
            
            // SCROLL UP/DOWN ------------
            
        else {
            
            // Header -----------
            
            headerTransform = CATransform3DTranslate(headerTransform, 0, max(-offset_HeaderStop, -offset), 0)
            
            //  ------------ Label
            
            headerLabel.isHidden = false
            let alignToNameLabel = -offset + handleLabel.frame.origin.y + headerView.frame.height + offset_HeaderStop
            
            headerLabel.frame.origin = CGPoint(x: headerLabel.frame.origin.x, y: max(alignToNameLabel, distance_W_LabelHeader + offset_HeaderStop))
            
            
            //  ------------ Blur
            
            headerBlurImageView?.alpha = min (1.0, (offset - alignToNameLabel)/distance_W_LabelHeader)
            
            // Avatar -----------
            
            let avatarScaleFactor = (min(offset_HeaderStop, offset)) / avatarImage.bounds.height / 9.4 // Slow down the animation
            print(avatarScaleFactor)
            
            let avatarSizeVariation = ((avatarImage.bounds.height * (1.0 + avatarScaleFactor)) - avatarImage.bounds.height) / 2.0
            print(avatarSizeVariation)
            
            avatarTransform = CATransform3DTranslate(avatarTransform, 0, avatarSizeVariation, 0)
            avatarTransform = CATransform3DScale(avatarTransform, 1.0 - avatarScaleFactor, 1.0 - avatarScaleFactor, 0)
            
            if offset <= offset_HeaderStop {
                
                if avatarImage.layer.zPosition < headerView.layer.zPosition{
                    headerView.layer.zPosition = 0
                }
                
                
            }else {
                if avatarImage.layer.zPosition >= headerView.layer.zPosition{
                    headerView.layer.zPosition = 2
                }
                
            }
            
        }
        
        // Apply Transformations
        headerView.layer.transform = headerTransform
        avatarImage.layer.transform = avatarTransform
        
        // Segment control
        
        let segmentViewOffset = profileView.frame.height - segmentedView.frame.height - offset
        
        var segmentTransform = CATransform3DIdentity
        
        // Scroll the segment view until its offset reaches the same offset at which the header stopped shrinking
        segmentTransform = CATransform3DTranslate(segmentTransform, 0, max(segmentViewOffset, -offset_HeaderStop), 0)
        
        segmentedView.layer.transform = segmentTransform
        
        
        // Set scroll view insets just underneath the segment control
        tableView.scrollIndicatorInsets = UIEdgeInsetsMake(segmentedView.frame.maxY, 0, 0, 0)
        
        
        
    }
    
    // MARK: Interface buttons
    
    @IBAction func selectContentType(_ sender: UISegmentedControl) {
        
        // crap code I know
        if sender.selectedSegmentIndex == 0 {
            contentToDisplay = .tweets
        }
        else {
            contentToDisplay = .media
        }
        
        tableView.reloadData()
    }
    
    
    @IBAction func shamelessActionThatNowBringsYouToDeansTwitterProfile() {
        
        if !UIApplication.shared.openURL(URL(string:"twitter://user?screen_name=deanbrindley87")!){
            UIApplication.shared.openURL(URL(string:"https://twitter.com/deanbrindley87")!)
        }
    }
    
}

