abstract class AbstractModel<I> {
  I? id;
  AbstractModel(this.id);
  Map<String, dynamic> toJson();
}
