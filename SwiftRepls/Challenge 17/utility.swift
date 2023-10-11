let diceArt = [

    1: [

        "┌─────────┐",

        "│         │",

        "│    ●    │",

        "│         │",

        "└─────────┘",

    ],

    2: [

        "┌─────────┐",

        "│  ●      │",

        "│         │",

        "│      ●  │",

        "└─────────┘",

    ],

    3: [

        "┌─────────┐",

        "│  ●      │",

        "│    ●    │",

        "│      ●  │",

        "└─────────┘",

    ],

    4: [

        "┌─────────┐",

        "│  ●   ●  │",

        "│         │",

        "│  ●   ●  │",

        "└─────────┘",

    ],

    5: [

        "┌─────────┐",

        "│  ●   ●  │",

        "│    ●    │",

        "│  ●   ●  │",

        "└─────────┘",

    ],

    6: [

        "┌─────────┐",

        "│  ●   ●  │",

        "│  ●   ●  │",

        "│  ●   ●  │",

        "└─────────┘",

    ],
]

func outputRoll(num: Int) {
  let art = diceArt[num]
  
  if let output = art {
    for line in output {
      print(line)
    }
  }
}

func getInt(prompt: String) -> Int {

  print(prompt)

  if let input = readLine(){

    if let integer = Int(input){

      return integer

    }

  }

  return -1

}

 

func getStr(prompt: String) -> String {

  print(prompt)

  if let input = readLine(){

    return input

  }

  return "-1"

}

func getDigitsFromString(for string: String) -> [Int]{
        let stringInt = Array(string)
        var array = [Int]()
        for i in stringInt {
            if let i = Int(String(i)) {
                array.append(i)
            }
        }
        return array
    }

func getDouble(prompt: String) -> Double{

  print(prompt)

  if let input = readLine(){

    if let double = Double(input){

      return double

    }

  }

  return -1.0

}

