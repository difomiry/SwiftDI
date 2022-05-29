public struct Empty: Dependency {
	public var parent: Empty { fatalError() }

	public init() {}
}
