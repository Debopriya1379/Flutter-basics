import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {

  String result="";
  // var bgcolor = Color.fromARGB(255, 150, 195, 255);
  var bgcolor;

  var height_ft_controller = TextEditingController();
  var height_in_controller = TextEditingController();
  var weight_controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: bgcolor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              children: [
                const SizedBox(height: 20,),
                const Text(
                  'Enter your height and weight',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: height_ft_controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Height in ft',
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: height_in_controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Height in inch',
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: weight_controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Weight',
                  ),
                ),
                const SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var hf=height_ft_controller.text.toString();
                      var hi=height_in_controller.text.toString();
                      var w=weight_controller.text.toString();
                      if(hf!="" && hi!="" && w!=""){
                        var ihf = int.parse(hf);
                        var ihi = int.parse(hi);
                        var iw = int.parse(w);
        
                        var tInch = (ihf*12)+ihi;
                        var tCm = tInch*2.54;
                        var tM = tCm/100;
        
                        var bmi = iw/(tM*tM);

                        var msg = "";

                        if(bmi>25){
                          msg="You are overweight";
                          bgcolor=Colors.orange.shade200;
                        }else if(bmi<18){
                          msg="You are underweight";
                          bgcolor=Colors.red.shade200;
                        }else{
                          msg="You are healthy";
                          bgcolor=Colors.green.shade200;
                        }
        
                        result = '$msg \n Your bmi is ${bmi.toStringAsFixed(3)}'; // 3 numbers after .
        
                      }else {
                        result ="Please fill all the required fields";
                      }
                    });
                  },
                  child: const Text('Calculate', style: TextStyle(color: Colors.green),),
                ),
                const SizedBox(height: 20,),
                (result!="") 
                ? ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result="";
                      height_ft_controller.clear();
                      height_in_controller.clear();
                      weight_controller.clear();
                    });
                  },
                  child: const Text('Clear', style: TextStyle(color: Colors.red),),
                )
                : Container(),
                const SizedBox(height: 20,),
                Text(
                  result,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}