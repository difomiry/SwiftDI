public extension Context {
	func make<Child, T>(
		_ factory: @escaping (Context<Child>) -> Scope<Child, T>
	) -> () -> T where Child: SwiftDI.Dependency, Child.Parent == Dependency {
		{ [dependency] () -> T in
			Context<Child>.make(dependency: dependency.value) { context in
				factory(context)
			}
		}
	}

	func make<Child, A0, T>(
		_ factory: @escaping (Context<Child>, A0) -> Scope<Child, T>
	) -> (A0) -> T where Child: SwiftDI.Dependency, Child.Parent == Dependency {
		{ [dependency] (a0) -> T in
			Context<Child>.make(dependency: dependency.value) { context in
				factory(context, a0)
			}
		}
	}

	func make<Child, A0, A1, T>(
		_ factory: @escaping (Context<Child>, A0, A1) -> Scope<Child, T>
	) -> (A0, A1) -> T where Child: SwiftDI.Dependency, Child.Parent == Dependency {
		{ [dependency] (a0, a1) -> T in
			Context<Child>.make(dependency: dependency.value) { context in
				factory(context, a0, a1)
			}
		}
	}

	func make<Child, A0, A1, A2, T>(
		_ factory: @escaping (Context<Child>, A0, A1, A2) -> Scope<Child, T>
	) -> (A0, A1, A2) -> T where Child: SwiftDI.Dependency, Child.Parent == Dependency {
		{ [dependency] (a0, a1, a2) -> T in
			Context<Child>.make(dependency: dependency.value) { context in
				factory(context, a0, a1, a2)
			}
		}
	}

	func make<Child, A0, A1, A2, A3, T>(
		_ factory: @escaping (Context<Child>, A0, A1, A2, A3) -> Scope<Child, T>
	) -> (A0, A1, A2, A3) -> T where Child: SwiftDI.Dependency, Child.Parent == Dependency {
		{ [dependency] (a0, a1, a2, a3) -> T in
			Context<Child>.make(dependency: dependency.value) { context in
				factory(context, a0, a1, a2, a3)
			}
		}
	}

	func make<Child, A0, A1, A2, A3, A4, T>(
		_ factory: @escaping (Context<Child>, A0, A1, A2, A3, A4) -> Scope<Child, T>
	) -> (A0, A1, A2, A3, A4) -> T where Child: SwiftDI.Dependency, Child.Parent == Dependency {
		{ [dependency] (a0, a1, a2, a3, a4) -> T in
			Context<Child>.make(dependency: dependency.value) { context in
				factory(context, a0, a1, a2, a3, a4)
			}
		}
	}
}
