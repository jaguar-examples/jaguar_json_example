// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// Generator: SerializerGenerator
// Target: class HelloCodec
// **************************************************************************

abstract class _$HelloCodec implements Serializer<Hello> {
  Map toMap(Hello model, {bool withType: false, String typeKey}) {
    Map ret = new Map();
    if (model != null) {
      if (model.greeting != null) {
        ret["greeting"] = model.greeting;
      }
      if (modelString() != null && withType) {
        ret[typeKey ?? defaultTypeInfoKey] = modelString();
      }
    }
    return ret;
  }

  Hello fromMap(Map map, {Hello model, String typeKey}) {
    if (map is! Map) {
      return null;
    }
    if (model is! Hello) {
      model = createModel();
    }
    model.greeting = map["greeting"];
    return model;
  }

  String modelString() => "Hello";
}

// **************************************************************************
// Generator: SerializerGenerator
// Target: class MathInputCodec
// **************************************************************************

abstract class _$MathInputCodec implements Serializer<MathInput> {
  Map toMap(MathInput model, {bool withType: false, String typeKey}) {
    Map ret = new Map();
    if (model != null) {
      if (model.a != null) {
        ret["a"] = model.a;
      }
      if (model.b != null) {
        ret["b"] = model.b;
      }
      if (modelString() != null && withType) {
        ret[typeKey ?? defaultTypeInfoKey] = modelString();
      }
    }
    return ret;
  }

  MathInput fromMap(Map map, {MathInput model, String typeKey}) {
    if (map is! Map) {
      return null;
    }
    if (model is! MathInput) {
      model = createModel();
    }
    model.a = map["a"];
    model.b = map["b"];
    return model;
  }

  String modelString() => "MathInput";
}

// **************************************************************************
// Generator: SerializerGenerator
// Target: class MathResultCodec
// **************************************************************************

abstract class _$MathResultCodec implements Serializer<MathResult> {
  Map toMap(MathResult model, {bool withType: false, String typeKey}) {
    Map ret = new Map();
    if (model != null) {
      if (model.addition != null) {
        ret["addition"] = model.addition;
      }
      if (model.subtraction != null) {
        ret["subtraction"] = model.subtraction;
      }
      if (model.mulitplication != null) {
        ret["mulitplication"] = model.mulitplication;
      }
      if (model.division != null) {
        ret["division"] = model.division;
      }
      if (modelString() != null && withType) {
        ret[typeKey ?? defaultTypeInfoKey] = modelString();
      }
    }
    return ret;
  }

  MathResult fromMap(Map map, {MathResult model, String typeKey}) {
    if (map is! Map) {
      return null;
    }
    if (model is! MathResult) {
      model = createModel();
    }
    model.addition = map["addition"];
    model.subtraction = map["subtraction"];
    model.mulitplication = map["mulitplication"];
    model.division = map["division"];
    return model;
  }

  String modelString() => "MathResult";
}
