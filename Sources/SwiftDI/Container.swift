@dynamicMemberLookup
public struct Container<Dependency> where Dependency: SwiftDI.Dependency {
	private let dependency: Dependency

	init(dependency: Dependency) {
		self.dependency = dependency
	}

	public subscript<T>(dynamicMember keyPath: KeyPath<Dependency, T>) -> T {
		dependency[keyPath: keyPath]
	}

	public subscript<T>(dynamicMember keyPath: KeyPath<Container<Dependency.Parent>, T>) -> T {
		Container<Dependency.Parent>(dependency: dependency.parent)[keyPath: keyPath]
	}
}
