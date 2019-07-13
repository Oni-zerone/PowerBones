import PowerTools

protocol I{{ name|firstUppercase }}PipeFactory {
    func pipe(for {{ name }}: {{ name|firstUppercase }}) -> PowerTools.Pipe<[SectionViewModel]>
}

struct {{ name|firstUppercase }}PipeFactory: I{{ name|firstUppercase }}PipeFactory {
    
    var {{ name }}Repository: I{{ name|firstUppercase }}Repository
    var {{ name }}sectionVMFactory: I{{ name|firstUppercase }}SectionVMFactory
    var {{ name }}itemVMFactory: I{{ name|firstUppercase }}VMFactory
    
    func pipe(for {{ name }}: {{ name|firstUppercase }}) -> PowerTools.Pipe<[SectionViewModel]> {
        return {{ name|firstUppercase }}Pipe({{ name }}Repository: {{ name }}Repository,
                          sectionVMFactory: sectionVMFactory,
                          {{ name }}VMFactory: {{ name }}VMFactory,
                          reference{{ name|firstUppercase }}: {{ name }})
    }
}
