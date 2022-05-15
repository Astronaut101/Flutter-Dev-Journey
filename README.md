# Flutter Development Journey

This is a journey on learning Flutter and exploring its ecosystem of features and its amazingly fresh functionalities of being able to build cross-platform applications. Most especially, to have fun along the way!! 😎💥

----

## Flutter Dev 0

As with all exploration to a new programming language and framework, we start with its installation and preparing all of the tools needed to help us get started with building our first Flutter App!

Based from the [Flutter Documentation](https://docs.flutter.dev/get-started/install/windows), as a Windows' user we must first make sure that we are able to call flutter from the Command Line to make sure it is working as expected.

After installing all the needed dependencies, we are now going to create a minimal Flutter app from templates, run it, and experience "hot reload" after you make changes to the app!

Our first demo Flutter App

[First Demo Flutter App](/img/dev0_flutter_demo_app.png)

*NOTE*: Do not test the performance of your app with debug and hot reload enabled! In debug mode, we are able to utilize developer features such as hot reload and step debugging. Once you're ready to analyze performance or release your app, you'll want to use Flutter's "profile" or "release" build modes.

### Flutter's Build Modes

The Flutter tooling supports three modes when compiling your Flutter app:

1. Using *debug* mode during development, when you want to enable the *hot reload* feature
2. Use *profile* mode when you want to analyze performance
3. Use *release* mode when you are ready to release the app

#### Debug Mode

In debug mode, we are able to do the following:

* Assertions
* Enabled Service Extensions
* Optimized compilations for fast development and run cycles
* Enabled debugging, and tools supporting level debugging

#### Release Mode

In release mode stage, we are ready to deploy our app and the following features are now in effect:

* Assertions are disabled
* Debugging information is stripped out
* Debugging is disabled
* Compilation is optimized for fast startup, fast execution, and small package sizes
* Service extensions are disabled

#### Profile Mode

In profile mode, the ability to debug is maintained - enough to profile your app's performance. Emulator and simulator is disabled in Profile Mode. On mobile, profile mode is similar to release mode, with the following differences:

* Some service extensions, such as the one that enables the performance overlay, are enabled
* Tracing is enabled, and tools for supporting source-level debugging (such as DevTools) can connect to the process.

### Learning the Basics of Flutter

[Intro to widgets](https://docs.flutter.dev/development/ui/widgets-intro)

According to the Flutter's documentation, The central idea of the widgets page is to be able to build your UI out of widgets. Widgets describe what their view should look like given their current configuration and state. When a widget's state changes, the widget rebuilds its description, which the framework diffs against the previous description in order to determine the minimal changes needed in the underlying render tree to transition from one state to the next.

#### [TBC] Handling Gestures from the Flutter Getting Started Docs
