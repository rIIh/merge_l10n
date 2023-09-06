# Merge l10n files together

Command line tool to merge .arb files into single one

```shell
dart run merge_l10n
```

will output and file with merged content will be created

```
Building package executable... 
Built merge_l10n:merge_l10n.
intl_es: Successfully merged 4 keys from 2 files
intl_en: Successfully merged 4 keys from 2 files
```

### Collisions

If there is key duplicates in same language files then tool will output problem keys and duplicate locations

```
Invalid argument(s): Key collision occured
intl_es: `cart__title` was duplicated in:
        File: 'lib/features/products/presentation/l10n/intl_es.arb'
        File: 'lib/features/cart/presentation/l10n/intl_es.arb'

intl_es: `products__title` was duplicated in:
        File: 'lib/features/products/presentation/l10n/intl_es.arb'
        File: 'lib/features/cart/presentation/l10n/intl_es.arb'

intl_en: Successfully merged 4 keys from 2 files
```

### TODO

- Auto scoping - define module scope and generate keys with prepended part from module scope.
- Use AST trees to print more detailed errors