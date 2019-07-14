import PowerTools

public protocol I{{ name|firstUppercase }}SectionVMFactory {
    func buildSection(header: ItemViewModel?, items: [ItemViewModel], footer: ItemViewModel?) -> SectionViewModel
}

public protocol I{{ name|firstUppercase }}VMFactory {
    
    func build(_ {{ name|lowercase }}: {{ name|firstUppercase }}) -> ItemViewModel
}

public class {{ name|firstUppercase }}Pipe: PowerTools.Pipe<[SectionViewModel]> {
    
    var {{ name|lowercase }}Repository: I{{ name|firstUppercase }}Repository
    var sectionVMFactory: I{{ name|firstUppercase }}SectionVMFactory
    var {{ name|lowercase }}VMFactory: I{{ name|firstUppercase }}VMFactory
    var reference{{ name|firstUppercase }}: {{ name|firstUppercase }}
    
    init({{ name|lowercase }}Repository: I{{ name|firstUppercase }}Repository,
         sectionVMFactory: I{{ name|firstUppercase }}SectionVMFactory,
         {{ name|lowercase }}VMFactory: I{{ name|firstUppercase }}VMFactory,
         reference{{ name|firstUppercase }}: {{ name|firstUppercase }}) {
        self.{{ name|lowercase }}Repository = {{ name|lowercase }}Repository
        self.sectionVMFactory = sectionVMFactory
        self.{{ name|lowercase }}VMFactory = {{ name|lowercase }}VMFactory
        self.reference{{ name|firstUppercase }} = reference{{ name|firstUppercase }}
    }
    
    public override func success(_ content: [SectionViewModel]) {
        let {{ name|lowercase }}s = {{ name|lowercase }}Repository.get{{ name|firstUppercase }}s(in: reference{{ name|firstUppercase }})
        let viewModels = {{ name|lowercase }}s.map { {{ name|lowercase }}VMFactory.build($0) }
        let section = sectionVMFactory.buildSection(header: nil, items: viewModels, footer: nil)
        self.send(content.appending(section))
    }
}
