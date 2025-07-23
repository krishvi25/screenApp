# assignment1
 Flutter app consists of three screens (A → B → C).
The  goal is to update a value on Screen C and reflect that change backward through Screen B to Screen A using Provider .
Provider is set up in main.dart using ChangeNotifierProvider.
Initial value is set to "Hello from A!".

 Screen A
Shows the initial value from the ValueProvider.
Navigates to Screen B using Navigator.push.

 Screen B
Reads the updated value using Provider.of<ValueProvider>
Navigates to Screen C using Navigator.push.

 Screen C
Accepts input using TextEditingController.
On pressing Update, the new value is sent to the provider
it uses Navigator.pop(context) to return to Screen B.
updated value is automatically available on Screen B and Screen A after returning.
