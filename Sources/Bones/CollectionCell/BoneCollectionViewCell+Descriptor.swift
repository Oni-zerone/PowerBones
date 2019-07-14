import PowerTools

extension {{ name|firstUppercase }}CollectionViewCell {
    
    static let identifier = String(describing: {{ name|firstUppercase }}CollectionViewCell.self)
    
    struct Descriptor: GridViewDescriptor {

        var reuseIdentifier: String {
            return {{ name|firstUppercase }}CollectionViewCell.identifier
        }
        
        var ratio: ViewRatio {
            return ViewRatio(multiplier: 1.0, constant: 0)
        }
    }
}
