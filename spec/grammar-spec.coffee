describe "Vamos grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("atom-language-vamos")

    runs ->
      grammar = atom.grammars.grammarForScopeName("source.vamos")

  it "parses the grammar", ->
    expect(grammar).toBeDefined()
    expect(grammar.scopeName).toBe "source.vamos"
