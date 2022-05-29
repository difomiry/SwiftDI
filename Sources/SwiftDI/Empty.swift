public enum Empty {}

extension Empty: Dependency {
	public var parent: Empty { fatalError() }
}
