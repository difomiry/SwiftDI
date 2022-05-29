public protocol Dependency {
	associatedtype Parent: Dependency

	var parent: Parent { get }
}
