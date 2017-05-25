library serializers;

import 'package:jaguar_serializer/serializer.dart';
import 'package:jaguar_json_example/models/models.dart';

part 'serializers.g.dart';

@GenSerializer()
class HelloCodec extends Serializer<Hello> with _$HelloCodec {
  Hello createModel() => new Hello();
}

@GenSerializer()
class MathInputCodec extends Serializer<MathInput> with _$MathInputCodec {
  MathInput createModel() => new MathInput();
}

@GenSerializer()
class MathResultCodec extends Serializer<MathResult> with _$MathResultCodec {
  MathResult createModel() => new MathResult();
}

final HelloCodec helloCodec = new HelloCodec();
final MathInputCodec mathInputCodec = new MathInputCodec();
final MathResultCodec mathResultCodec = new MathResultCodec();

final JsonRepo repo = new JsonRepo()
  ..add(helloCodec)
  ..add(mathInputCodec)
  ..add(mathResultCodec);
