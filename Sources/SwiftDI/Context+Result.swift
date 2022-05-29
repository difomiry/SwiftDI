public extension Context {
	static func resolve<T>(
		dependency: Dependency.Parent,
		factory: (Context) -> Scope<Dependency, T>
	) -> T {
		let context = Context(parent: dependency)
		let scope = factory(context)
		context.dependency.value = scope.parent
		return scope.result
	}
}
