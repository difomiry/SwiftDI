public struct Scope<Parent, Result> where Parent: SwiftDI.Dependency {
	public let parent: Parent
	public let result: Result

	public init(
		parent: Parent,
		result: Result
	) {
		self.parent = parent
		self.result = result
	}
}
