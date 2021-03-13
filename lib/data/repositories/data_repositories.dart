import 'package:product_list/data/data.dart';
import 'package:product_list/domain/domain.dart';

/// Repositories (retrieve data, heavy processing etc..)
class DataRepository extends DomainRepository {
  /// [_connectHelper] : A connection helper which will connect to the
  /// remote to get the data.
  DataRepository(this._connectHelper);

  final ConnectHelper _connectHelper;

  @override
  String getStringValue(String key) {
    throw UnimplementedError();
  }
}
