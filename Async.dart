//Asynchronous programming: futures, async, await

//future
// Future<void> fetchUserOrder() {
//   // Imagine that this function is fetching user info from another service or database.
//   return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
// }

// Future<void> fetchUserOrder() {
// // Imagine that this function is fetching user info but encounters a bug
//   return Future.delayed(const Duration(seconds: 2),
//       () => throw Exception('Logout failed: user ID is invalid'));
// }

//Key terms:

// Future: the Dart Future class.
// future: an instance of the Dart Future class.

//Working with futures: async and await

//Here’s an example that converts main() from a synchronous to asynchronous function.

// First, add the async keyword before the function body:
// void main() async { ··· }

//If the function has a declared return type, then update the type to be Future<T>, where T is the type of the value that the function returns. If the function doesn’t explicitly return a value, then the return type is Future<void>:

//Future<void> main() async { ··· }

//Now that you have an async function, you can use the await keyword to wait for a future to complete:

//print(await createOrderMessage());

// Future<void> main() async {
//   fetchUserOrder();
//   print('Fetching user order...');
// }

//Example: synchronous functions
// String createOrderMessage() {
//   var order = fetchUserOrder();
//   return 'Your order is: $order';
// }

// Future<String> fetchUserOrder() =>
//     // Imagine that this function is
//     // more complex and slow.
//     Future.delayed(
//       const Duration(seconds: 2),
//       () => 'Large Latte',
//     );

// void main() {
//   print('Fetching user order...');
//   print( createOrderMessage());
// }

//Example: asynchronous functions
// Future<String> createOrderMessage() async {
//   var order = await fetchUserOrder();
//   return 'Your order is: $order';
// }

// Future<String> fetchUserOrder() =>
//     // Imagine that this function is
//     // more complex and slow.
//     Future.delayed(
//       const Duration(seconds: 2),
//       () => 'Large Latte',
//     );
// Future<void> main() async{
//   print('Fetching user order...');
//   print( await createOrderMessage());
// }

//Key terms:

// async: You can use the async keyword before a function’s body to mark it as asynchronous.
// async function: An async function is a function labeled with the async keyword.
// await: You can use the await keyword to get the completed result of an asynchronous expression. The await keyword only works within an async function.

//------------------------------------------
// Example: async and await with try-catch

// Future<void> printOrderMessage() async {
//   try {
//     print('Awaiting user order...');
//     var order = await fetchUserOrder();
//     print(order);
//   } catch (err) {
//     print('Caught error: $err');
//   }
// }

// Future<String> fetchUserOrder() {
//   // Imagine that this function is more complex.
//   var str = Future.delayed(
//       const Duration(seconds: 4),
//       () => throw 'Cannot locate user order');
//   return str;
// }

// void main() async {
//   await printOrderMessage();
// }

// EXERCISE

// void main() {
//   // Part 1
//   String addHello(String user) => 'Hello $user';

// // Part 2
// // You can call the provided async function fetchUsername()
// // to return the username.
// Future<String> greetUser() async {
//   var userName = await fetchUsername();
//   return addHello(userName);
// }

// // Part 3
// // You can call the provided async function logoutUser()
// // to log out the user.
// Future<String> sayGoodbye() async {
//   try{ 
//     var result = await logoutUser();    
//     return '$result Thanks, see you next time';
//   }
//   catch (err){
//     return 'Failed to logout: $err';
//   }
// }
// }
