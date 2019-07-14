import PowerTools

protocol I{{ name|firstUppercase }}PipeFactory {
    func pipe(for {{ name|lowercase }}: {{ name|firstUppercase }}) -> PowerTools.Pipe<[SectionViewModel]>
}

struct {{ name|firstUppercase }}PipeFactory: I{{ name|firstUppercase }}PipeFactory {
    
    var {{ name|lowercase }}Repository: I{{ name|firstUppercase }}Repository
    var {{ name|lowercase }}sectionVMFactory: I{{ name|firstUppercase }}SectionVMFactory
    var {{ name|lowercase }}itemVMFactory: I{{ name|firstUppercase }}VMFactory
    
    func pipe(for {{ name|lowercase }}: {{ name|firstUppercase }}) -> PowerTools.Pipe<[SectionViewModel]> {
        return {{ name|firstUppercase }}Pipe({{ name|lowercase }}Repository: {{ name|lowercase }}Repository,
                          sectionVMFactory: sectionVMFactory,
                          {{ name|lowercase }}VMFactory: {{ name|lowercase }}VMFactory,
                          reference{{ name|firstUppercase }}: {{ name|lowercase }})
    }
}
