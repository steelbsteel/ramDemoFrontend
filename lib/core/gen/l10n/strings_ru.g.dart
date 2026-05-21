///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsRu = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsCommonRu common = TranslationsCommonRu.internal(_root);
	late final TranslationsErrorsRu errors = TranslationsErrorsRu.internal(_root);
}

// Path: common
class TranslationsCommonRu {
	TranslationsCommonRu.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ru: 'Рик и Морти'
	String get rickAndMorty => 'Рик и Морти';
}

// Path: errors
class TranslationsErrorsRu {
	TranslationsErrorsRu.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// ru: 'Нет интернета'
	String get noInternet => 'Нет интернета';

	/// ru: 'Ошибка досупа к кэшу'
	String get cache => 'Ошибка досупа к кэшу';

	/// ru: 'Неизвестная ошибка'
	String get unknown => 'Неизвестная ошибка';
}

/// The flat map containing all translations for locale <ru>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'common.rickAndMorty' => 'Рик и Морти',
			'errors.noInternet' => 'Нет интернета',
			'errors.cache' => 'Ошибка досупа к кэшу',
			'errors.unknown' => 'Неизвестная ошибка',
			_ => null,
		};
	}
}
