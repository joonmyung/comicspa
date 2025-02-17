
import 'package:first_ui/models/model_comic_info.dart';


class ModelComicDetailInfo
{
  String _userId;
  String _creatorId;
  String _mainTitleName;
  String _representationImageUrl;
  String _explain;
  String _creatorName;
  double _point;
  List<ModelComicInfo> _modelComicInfoList;

  String get userId => _userId;
  String get creatorId => _creatorId;
  String get mainTitleName => _mainTitleName;
  String get representationImageUrl => _representationImageUrl;
  String get explain => _explain;
  String get creatorName => _creatorName;
  double get point => _point;
  List<ModelComicInfo> get modelComicInfoList => _modelComicInfoList;

  set userId(String userId)
  {
    _userId = userId;
  }
  set creatorId(String creatorId)
  {
    _creatorId = creatorId;
  }
  set mainTitleName(String mainTitleName)
  {
    _mainTitleName = mainTitleName;
  }
  set representationImageUrl(String representationImageUrl)
  {
    _representationImageUrl = representationImageUrl;
  }
  set explain(String explain)
  {
    _explain = explain;
  }
  set creatorName(String creatorName)
  {
    _creatorName = creatorName;
  }
  set point(double point)
  {
    _point = point;
  }
  set modelComicInfoList(List<ModelComicInfo> modelComicInfoList)
  {
    _modelComicInfoList = modelComicInfoList;
  }

  static ModelComicDetailInfo _instance;
  static ModelComicDetailInfo getInstance() {
    if(_instance == null) {
      _instance = ModelComicDetailInfo();
      return _instance;
    }
    return _instance;
  }

}