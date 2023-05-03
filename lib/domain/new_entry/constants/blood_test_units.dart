const List<String> units = [
  '10^3/µL',
  '10^9/L',
  'G/L',
  '10^6/µL',
  '10^12/L',
  'T/L',
  'g/dL',
  'g/L',
  'mmol/L',
  '%',
  'L/L',
  'fL',
  'IU/L',
  'µIU/mL',
  'ng/dL',
  'µg/dL',
  'pg/mL',
  'ng/mL',
  'µmol/L',
];

class ResultUnitsKeys {
  static const String hematology = 'hematology';
  static const String thyroidHormones = 'thyroidHormones';
  static const String biochemistry = 'biochemistry';
}

const Map<String, Map<String, List<int>>> resultsUnits = {
  ResultUnitsKeys.hematology: {
    'WBC': [0, 1, 2],
    'RBC': [3, 4, 5],
    'HGB': [6, 7, 8],
    'HCT': [9, 10],
    'MCV': [11],
    'MCH': [11],
    'MCHC': [6, 8],
    'RDW-SD': [11],
    'RDW-CV': [9],
    'PLT': [0, 1, 2],
    'PDW': [9],
    'MPV': [11],
    'P-LCR': [9],
    'PCT': [9],
    'NEUT#': [0, 1, 2],
    'LYMPH#': [0, 1, 2],
    'MONO#': [0, 1, 2],
    'EO#': [0, 1, 2],
    'BASO#': [0, 1, 2],
    'IG#': [0, 1, 2],
    'NRBC#': [0, 1, 2],
    'NEUT%': [9],
    'LYMPH%': [9],
    'MONO%': [9],
    'EO%': [9],
    'BASO%': [9],
    'IG%': [9],
  },
  ResultUnitsKeys.thyroidHormones: {
    'TSH': [12, 13],
    'Free T4': [14],
    'Total T4': [15],
    'Free T3': [16],
    'Total T3': [17],
    'Reverse T3': [14],
    'Anti-TPO': [12],
    'Anti-Tg': [12],
    'TRAB': [12],
  },
  ResultUnitsKeys.biochemistry: {
    'Sodium': [6],
    'Potassium': [6],
    'Magnesium': [6],
    'Iron': [18]
  }
};
