# How to apply the currency format to the axis labels (SfCartesianChart)

Flutter Cartesian chart widget provides support for applying currency format to the numeric axis labels in various representations. This can be achieved using the numberFormat property of an axis. There are two types of methods that can be used to format the numeric axis labels in currency format such as

* NumberFormat.currency() - For formatting the currency values in locales currency pattern e.g. “INR1,21,000.00” instead of “121000”. In this method, you can control the representations such as decimal digits, name, locales, currency pattern, and symbols.
* NumberFormat.compactCurrency() - For formatting the currency values in compact representations e.g. "$1.2M" instead of "$1,200,000". In this method, you can control the decimal digits as per required and you can also provide the symbol of currency as a parameter to the method, in order to replace the default currency symbol i.e., “$”.

## Requirements to run the demo
* [VS Code](https://code.visualstudio.com/download)
* [Flutter SDK v2.0.0+](https://flutter.dev/docs/development/tools/sdk/overview)
* [For more development tools](https://flutter.dev/docs/development/tools/devtools/overview)

## How to run this application
To run this application, you need to first clone or download the ‘axis label currency format flutter chart’ repository and open it in your preferred IDE. Then, build and run your project to view the output.

## Further help
For more help, check the [Syncfusion Flutter documentation](https://help.syncfusion.com/flutter/introduction/overview), or
 [Flutter documentation](https://flutter.dev/docs/get-started/install).
