class DashboardQueries {
  static const DashboardQueries _instance = DashboardQueries._();
  factory DashboardQueries(){
    return _instance;
  }
  const DashboardQueries._();
  
  //Products

  Map<String,dynamic> numberOfProductsMapQuery(){
    return {
      'query': '''
        {
          products {
            title
          }
        }
      ''',
    };
  }

  //Categories

  Map<String,dynamic> numberOfCategoriesMapQuery(){
    return {
      'query': '''
        {
          categories {
            name
          }
        }
      ''',
    };
  }

  //users

  Map<String,dynamic> numberOfUsersMapQuery(){
    return {
      'query': '''
        {
          users {
            name
          }
        }
      ''',
    };
  }
}