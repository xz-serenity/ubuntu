#include <ilcplex/ilocplex.h>
#include <stdio.h>
using namespace std;

ILOSTLBEGIN
int
main(void*)
{
   IloEnv env;
   try
   {
      IloModel model(env);
      IloNumVarArray vars(env);
      vars.add(IloNumVar(env,0.0,40.0)); //0 <= x1 <= 40
      vars.add(IloNumVar(env)); //x2 >= 0
      vars.add(IloNumVar(env)); //x3 >= 0
      model.add(IloMaxmize(env,vars[0] + 2 * vars[1] + 3 * vars[2])); //Obj: x1 + 2* x2 + 3* x3
      model.add(-vars[0]+vars[1]+vars[2] <= 20); //-x1 + x2 +x3 <= 20
      model.add(var[0] - 3*var[1] + var[2] <= 30); //x1 - 3*x2 + x3 <= 30
      IloCplex cplex(model);
      if (!cplex.solve())
      {
         env.error() << "failed to optimize LP." <<endl;
         throw(-1);
      }
      IloNumArray vals(env);
      env.out() << "solution status = " << cplex.getStatus() <<endl;
      env.out() << "solution value = " << cplex.getObjValue() << endl;
      cplex.getValues(vals,vars);
      env.out() << "Values = " << vals << endl;
   }
   catch (IloException $e) { cerr << "concert exception caught: " << e << endl;}
   catch (...) { cerr << "unknown exception caught" << endl;}
   env.end();

   system("pause");
   return 0;
}
