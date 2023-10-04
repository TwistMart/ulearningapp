 class AppStates{
  int counter=0;
  AppStates({required counter});
}

class initiliazeCounter extends AppStates{
  initiliazeCounter(): super(counter: 0);
}

// class IncrementStateCounter extends AppStates{
//   IncrementStateCounter(int IncreaseState):super(counter: IncreaseState);
// }
//
//  class DecrementStateCounter extends AppStates{
//    DecrementStateCounter(int DecreaseState):super(counter: DecreaseState);
//  }

