class QuranResponseModel {
  final int code;
  final String status;
  final dynamic data;

  QuranResponseModel({
    required this.code,
    required this.status,
    required this.data,
  });

  factory QuranResponseModel.fromJson(final json) => QuranResponseModel(
        code: json["code"],
        status: json["status"],
        data: json["data"],
      );
}
