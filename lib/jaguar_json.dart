// Copyright (c) 2017, teja. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:jaguar/jaguar.dart';
import 'package:jaguar_json/jaguar_json.dart';

import 'package:jaguar_json_example/models/models.dart';
import 'package:jaguar_json_example/serializers/serializers.dart';

@Api(path: '/api')
class ExampleApi {
  @Group(path: '/serializer')
  final SerializerExample serializerExample = new SerializerExample();

  @Group(path: '/repo')
  final RepoExample repoExample = new RepoExample();
}

@RouteGroup()
class SerializerExample {
  WrapEncodeJson<Hello> helloEncoder() => new WrapEncodeJson<Hello>(helloCodec);
  WrapDecodeJson<MathInput> mathInputDecoder() =>
      new WrapDecodeJson<MathInput>(mathInputCodec);
  WrapEncodeJson<MathResult> mathResultEncoder() =>
      new WrapEncodeJson<MathResult>(mathResultCodec);

  @Get(path: '/hello')
  @Wrap(const [#helloEncoder])
  Hello sayHello() => new Hello()..greeting = "Hello";

  @Post(path: '/math')
  @Wrap(const [#mathResultEncoder, #mathInputDecoder])
  MathResult math(@Input(DecodeJson) MathInput input) {
    int a = input.a;
    int b = input.b;

    return new MathResult()
      ..addition = (a + b)
      ..subtraction = (a - b)
      ..mulitplication = (a * b)
      ..division = (a ~/ b);
  }
}

@RouteGroup()
@Wrap(const [#encoder, #decoder])
class RepoExample {
  WrapEncodeJsonRepo encoder() => new WrapEncodeJsonRepo(repo, withType: true);

  WrapDecodeJsonRepo decoder() => new WrapDecodeJsonRepo(repo);

  @Get(path: '/hello')
  Hello sayHello() => new Hello()..greeting = "Hello";

  @Post(path: '/math')
  MathResult math(@Input(DecodeJsonRepo) MathInput input) {
    int a = input.a;
    int b = input.b;

    return new MathResult()
      ..addition = (a + b)
      ..subtraction = (a - b)
      ..mulitplication = (a * b)
      ..division = (a ~/ b);
  }
}