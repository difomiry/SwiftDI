public struct EmptyDependency<Parent>: Dependency where Parent: Dependency {
	public let parent: Parent

	public init(parent: Parent) {
		self.parent = parent
	}
}
