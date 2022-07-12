//
//  TablesCell.swift
//  tables2
//
//  Created by Ammad on 11/07/2022.
//

import UIKit

class TablesCell: UITableViewCell {
    @IBOutlet weak var pho: UILabel!
    @IBOutlet weak var las: UILabel!
    @IBOutlet weak var fir: UILabel!
    @IBOutlet weak var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateview(_ contact:ContactModel){
        pho.text=contact.phone
        las.text=contact.lastname
        fir.text=contact.firstname
        img.image=UIImage(named: contact.icon)
        
    }



}
