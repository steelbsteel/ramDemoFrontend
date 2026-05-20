import 'dart:async';
import 'fragments.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'schema.graphql.dart';

class Variables$Query$GetCharacters {
  factory Variables$Query$GetCharacters({
    int? page,
    Input$FilterCharacter? filter,
  }) => Variables$Query$GetCharacters._({
    if (page != null) r'page': page,
    if (filter != null) r'filter': filter,
  });

  Variables$Query$GetCharacters._(this._$data);

  factory Variables$Query$GetCharacters.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$FilterCharacter.fromJson((l$filter as Map<String, dynamic>));
    }
    return Variables$Query$GetCharacters._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  Input$FilterCharacter? get filter =>
      (_$data['filter'] as Input$FilterCharacter?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetCharacters<Variables$Query$GetCharacters>
  get copyWith => CopyWith$Variables$Query$GetCharacters(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetCharacters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$filter = filter;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('filter') ? l$filter : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetCharacters<TRes> {
  factory CopyWith$Variables$Query$GetCharacters(
    Variables$Query$GetCharacters instance,
    TRes Function(Variables$Query$GetCharacters) then,
  ) = _CopyWithImpl$Variables$Query$GetCharacters;

  factory CopyWith$Variables$Query$GetCharacters.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCharacters;

  TRes call({int? page, Input$FilterCharacter? filter});
}

class _CopyWithImpl$Variables$Query$GetCharacters<TRes>
    implements CopyWith$Variables$Query$GetCharacters<TRes> {
  _CopyWithImpl$Variables$Query$GetCharacters(this._instance, this._then);

  final Variables$Query$GetCharacters _instance;

  final TRes Function(Variables$Query$GetCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? page = _undefined, Object? filter = _undefined}) => _then(
    Variables$Query$GetCharacters._({
      ..._instance._$data,
      if (page != _undefined) 'page': (page as int?),
      if (filter != _undefined) 'filter': (filter as Input$FilterCharacter?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetCharacters<TRes>
    implements CopyWith$Variables$Query$GetCharacters<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCharacters(this._res);

  TRes _res;

  call({int? page, Input$FilterCharacter? filter}) => _res;
}

class Query$GetCharacters {
  Query$GetCharacters({this.characters, this.$__typename = 'Query'});

  factory Query$GetCharacters.fromJson(Map<String, dynamic> json) {
    final l$characters = json['characters'];
    final l$$__typename = json['__typename'];
    return Query$GetCharacters(
      characters: l$characters == null
          ? null
          : Query$GetCharacters$characters.fromJson(
              (l$characters as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCharacters$characters? characters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$characters = characters;
    _resultData['characters'] = l$characters?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$characters = characters;
    final l$$__typename = $__typename;
    return Object.hashAll([l$characters, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetCharacters || runtimeType != other.runtimeType) {
      return false;
    }
    final l$characters = characters;
    final lOther$characters = other.characters;
    if (l$characters != lOther$characters) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCharacters on Query$GetCharacters {
  CopyWith$Query$GetCharacters<Query$GetCharacters> get copyWith =>
      CopyWith$Query$GetCharacters(this, (i) => i);
}

abstract class CopyWith$Query$GetCharacters<TRes> {
  factory CopyWith$Query$GetCharacters(
    Query$GetCharacters instance,
    TRes Function(Query$GetCharacters) then,
  ) = _CopyWithImpl$Query$GetCharacters;

  factory CopyWith$Query$GetCharacters.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCharacters;

  TRes call({Query$GetCharacters$characters? characters, String? $__typename});
  CopyWith$Query$GetCharacters$characters<TRes> get characters;
}

class _CopyWithImpl$Query$GetCharacters<TRes>
    implements CopyWith$Query$GetCharacters<TRes> {
  _CopyWithImpl$Query$GetCharacters(this._instance, this._then);

  final Query$GetCharacters _instance;

  final TRes Function(Query$GetCharacters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? characters = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetCharacters(
      characters: characters == _undefined
          ? _instance.characters
          : (characters as Query$GetCharacters$characters?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$GetCharacters$characters<TRes> get characters {
    final local$characters = _instance.characters;
    return local$characters == null
        ? CopyWith$Query$GetCharacters$characters.stub(_then(_instance))
        : CopyWith$Query$GetCharacters$characters(
            local$characters,
            (e) => call(characters: e),
          );
  }
}

class _CopyWithStubImpl$Query$GetCharacters<TRes>
    implements CopyWith$Query$GetCharacters<TRes> {
  _CopyWithStubImpl$Query$GetCharacters(this._res);

  TRes _res;

  call({Query$GetCharacters$characters? characters, String? $__typename}) =>
      _res;

  CopyWith$Query$GetCharacters$characters<TRes> get characters =>
      CopyWith$Query$GetCharacters$characters.stub(_res);
}

const documentNodeQueryGetCharacters = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetCharacters'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'page')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'FilterCharacter'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'characters'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: VariableNode(name: NameNode(value: 'filter')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'info'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'InfoFragment'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'results'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'CharacterFragment'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionInfoFragment,
    fragmentDefinitionCharacterFragment,
  ],
);
Query$GetCharacters _parserFn$Query$GetCharacters(Map<String, dynamic> data) =>
    Query$GetCharacters.fromJson(data);
typedef OnQueryComplete$Query$GetCharacters =
    FutureOr<void> Function(Map<String, dynamic>?, Query$GetCharacters?);

class Options$Query$GetCharacters
    extends graphql.QueryOptions<Query$GetCharacters> {
  Options$Query$GetCharacters({
    String? operationName,
    Variables$Query$GetCharacters? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCharacters? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetCharacters? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables?.toJson() ?? {},
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$GetCharacters(data),
               ),
         onError: onError,
         document: documentNodeQueryGetCharacters,
         parserFn: _parserFn$Query$GetCharacters,
       );

  final OnQueryComplete$Query$GetCharacters? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$GetCharacters
    extends graphql.WatchQueryOptions<Query$GetCharacters> {
  WatchOptions$Query$GetCharacters({
    String? operationName,
    Variables$Query$GetCharacters? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCharacters? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables?.toJson() ?? {},
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryGetCharacters,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$GetCharacters,
       );
}

class FetchMoreOptions$Query$GetCharacters extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCharacters({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetCharacters? variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables?.toJson() ?? {},
         document: documentNodeQueryGetCharacters,
       );
}

extension ClientExtension$Query$GetCharacters on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCharacters>> query$GetCharacters([
    Options$Query$GetCharacters? options,
  ]) async => await this.query(options ?? Options$Query$GetCharacters());

  graphql.ObservableQuery<Query$GetCharacters> watchQuery$GetCharacters([
    WatchOptions$Query$GetCharacters? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$GetCharacters());

  void writeQuery$GetCharacters({
    required Query$GetCharacters data,
    Variables$Query$GetCharacters? variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryGetCharacters),
      variables: variables?.toJson() ?? const {},
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$GetCharacters? readQuery$GetCharacters({
    Variables$Query$GetCharacters? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetCharacters),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetCharacters.fromJson(result);
  }
}

class Query$GetCharacters$characters {
  Query$GetCharacters$characters({
    this.info,
    this.results,
    this.$__typename = 'Characters',
  });

  factory Query$GetCharacters$characters.fromJson(Map<String, dynamic> json) {
    final l$info = json['info'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query$GetCharacters$characters(
      info: l$info == null
          ? null
          : Fragment$InfoFragment.fromJson((l$info as Map<String, dynamic>)),
      results: (l$results as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : Fragment$CharacterFragment.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$InfoFragment? info;

  final List<Fragment$CharacterFragment?>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$info = info;
    _resultData['info'] = l$info?.toJson();
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$info = info;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$info,
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetCharacters$characters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$info = info;
    final lOther$info = other.info;
    if (l$info != lOther$info) {
      return false;
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCharacters$characters
    on Query$GetCharacters$characters {
  CopyWith$Query$GetCharacters$characters<Query$GetCharacters$characters>
  get copyWith => CopyWith$Query$GetCharacters$characters(this, (i) => i);
}

abstract class CopyWith$Query$GetCharacters$characters<TRes> {
  factory CopyWith$Query$GetCharacters$characters(
    Query$GetCharacters$characters instance,
    TRes Function(Query$GetCharacters$characters) then,
  ) = _CopyWithImpl$Query$GetCharacters$characters;

  factory CopyWith$Query$GetCharacters$characters.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCharacters$characters;

  TRes call({
    Fragment$InfoFragment? info,
    List<Fragment$CharacterFragment?>? results,
    String? $__typename,
  });
  CopyWith$Fragment$InfoFragment<TRes> get info;
  TRes results(
    Iterable<Fragment$CharacterFragment?>? Function(
      Iterable<
        CopyWith$Fragment$CharacterFragment<Fragment$CharacterFragment>?
      >?,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$GetCharacters$characters<TRes>
    implements CopyWith$Query$GetCharacters$characters<TRes> {
  _CopyWithImpl$Query$GetCharacters$characters(this._instance, this._then);

  final Query$GetCharacters$characters _instance;

  final TRes Function(Query$GetCharacters$characters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? info = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$GetCharacters$characters(
      info: info == _undefined
          ? _instance.info
          : (info as Fragment$InfoFragment?),
      results: results == _undefined
          ? _instance.results
          : (results as List<Fragment$CharacterFragment?>?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$InfoFragment<TRes> get info {
    final local$info = _instance.info;
    return local$info == null
        ? CopyWith$Fragment$InfoFragment.stub(_then(_instance))
        : CopyWith$Fragment$InfoFragment(local$info, (e) => call(info: e));
  }

  TRes results(
    Iterable<Fragment$CharacterFragment?>? Function(
      Iterable<
        CopyWith$Fragment$CharacterFragment<Fragment$CharacterFragment>?
      >?,
    )
    _fn,
  ) => call(
    results: _fn(
      _instance.results?.map(
        (e) =>
            e == null ? null : CopyWith$Fragment$CharacterFragment(e, (i) => i),
      ),
    )?.toList(),
  );
}

class _CopyWithStubImpl$Query$GetCharacters$characters<TRes>
    implements CopyWith$Query$GetCharacters$characters<TRes> {
  _CopyWithStubImpl$Query$GetCharacters$characters(this._res);

  TRes _res;

  call({
    Fragment$InfoFragment? info,
    List<Fragment$CharacterFragment?>? results,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$InfoFragment<TRes> get info =>
      CopyWith$Fragment$InfoFragment.stub(_res);

  results(_fn) => _res;
}
