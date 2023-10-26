import 'package:day59/models/offers/OfferModel.dart';
import 'package:day59/repositories/OfferRepository.dart';

class OfferProvider {

  // انشاء كائن
  final OfferRepository _offerRepository;

  //لربط كائن OfferProvider بمستودع العروض. سيستخدم كائن OfferProvider هذا المستودع للحصول على البيانات حول العروض.
  OfferProvider(this._offerRepository);

  Future<List<OfferModel>> getOffers() async {
    var offers = await _offerRepository.getOffers();

    //لتحويل عرض من نوع Map<String, dynamic> إلى كائن من نوع OfferModel.
    return offers.map((offer) => OfferModel.fromJson(offer)).toList();
  }
}
