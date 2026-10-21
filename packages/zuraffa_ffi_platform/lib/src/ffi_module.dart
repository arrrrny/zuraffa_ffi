/// A compiled WebAssembly module, bound to [id] inside the owning
/// engine/adapter until unloaded.
class FfiModule {
  final String id;
  final int byteLength;

  const FfiModule({required this.id, required this.byteLength});
}
