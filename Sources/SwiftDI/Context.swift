@dynamicMemberLookup
public struct Context<Dependency> where Dependency: SwiftDI.Dependency {
	public let parent: Dependency.Parent
	let dependency = Box<Dependency>()

	public subscript<T>(dynamicMember keyPath: KeyPath<Container<Dependency.Parent>, T>) -> T {
		Container(dependency: parent)[keyPath: keyPath]
	}
}
