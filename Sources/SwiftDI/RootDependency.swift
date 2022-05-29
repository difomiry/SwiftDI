public protocol RootDependency: Dependency where Parent == Empty {}

extension RootDependency {
	public var parent: Empty { fatalError() }
}
