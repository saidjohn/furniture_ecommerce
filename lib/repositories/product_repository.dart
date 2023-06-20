
/// alohida olib pagination qilish

abstract class ProductRepository {
  Map<String, Object> getProducts(String categoryId, {int page = 0, int limit = 20});
}