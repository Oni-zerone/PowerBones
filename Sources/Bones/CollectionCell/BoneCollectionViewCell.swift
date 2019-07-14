import UIKit

class {{ name|firstUppercase }}CollectionViewCell: UICollectionViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupCell()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.setupCell()
    }
}
