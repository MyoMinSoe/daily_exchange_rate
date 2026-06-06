class CurrenciesModel {
  String? info;
  String? description;
  Currencies? currencies;

  CurrenciesModel({this.info, this.description, this.currencies});

  CurrenciesModel.fromJson(Map<String, dynamic> json) {
    info = json['info'];
    description = json['description'];
    currencies = json['currencies'] != null
        ? Currencies.fromJson(json['currencies'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['info'] = info;
    data['description'] = description;
    if (currencies != null) {
      data['currencies'] = currencies!.toJson();
    }
    return data;
  }
}

class Currencies {
  String? uSD;
  String? eUR;
  String? sGD;
  String? gBP;
  String? cHF;
  String? jPY;
  String? aUD;
  String? bDT;
  String? bND;
  String? kHR;
  String? cAD;
  String? cNY;
  String? hKD;
  String? iNR;
  String? iDR;
  String? kRW;
  String? lAK;
  String? mYR;
  String? nZD;
  String? pKR;
  String? pHP;
  String? lKR;
  String? tHB;
  String? vND;
  String? bRL;
  String? cZK;
  String? dKK;
  String? eGP;
  String? iLS;
  String? kES;
  String? kWD;
  String? nPR;
  String? nOK;
  String? rUB;
  String? sAR;
  String? rSD;
  String? zAR;
  String? sEK;

  Currencies({
    this.uSD,
    this.eUR,
    this.sGD,
    this.gBP,
    this.cHF,
    this.jPY,
    this.aUD,
    this.bDT,
    this.bND,
    this.kHR,
    this.cAD,
    this.cNY,
    this.hKD,
    this.iNR,
    this.iDR,
    this.kRW,
    this.lAK,
    this.mYR,
    this.nZD,
    this.pKR,
    this.pHP,
    this.lKR,
    this.tHB,
    this.vND,
    this.bRL,
    this.cZK,
    this.dKK,
    this.eGP,
    this.iLS,
    this.kES,
    this.kWD,
    this.nPR,
    this.nOK,
    this.rUB,
    this.sAR,
    this.rSD,
    this.zAR,
    this.sEK,
  });

  Currencies.fromJson(Map<String, dynamic> json) {
    uSD = json['USD'];
    eUR = json['EUR'];
    sGD = json['SGD'];
    gBP = json['GBP'];
    cHF = json['CHF'];
    jPY = json['JPY'];
    aUD = json['AUD'];
    bDT = json['BDT'];
    bND = json['BND'];
    kHR = json['KHR'];
    cAD = json['CAD'];
    cNY = json['CNY'];
    hKD = json['HKD'];
    iNR = json['INR'];
    iDR = json['IDR'];
    kRW = json['KRW'];
    lAK = json['LAK'];
    mYR = json['MYR'];
    nZD = json['NZD'];
    pKR = json['PKR'];
    pHP = json['PHP'];
    lKR = json['LKR'];
    tHB = json['THB'];
    vND = json['VND'];
    bRL = json['BRL'];
    cZK = json['CZK'];
    dKK = json['DKK'];
    eGP = json['EGP'];
    iLS = json['ILS'];
    kES = json['KES'];
    kWD = json['KWD'];
    nPR = json['NPR'];
    nOK = json['NOK'];
    rUB = json['RUB'];
    sAR = json['SAR'];
    rSD = json['RSD'];
    zAR = json['ZAR'];
    sEK = json['SEK'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['USD'] = uSD;
    data['EUR'] = eUR;
    data['SGD'] = sGD;
    data['GBP'] = gBP;
    data['CHF'] = cHF;
    data['JPY'] = jPY;
    data['AUD'] = aUD;
    data['BDT'] = bDT;
    data['BND'] = bND;
    data['KHR'] = kHR;
    data['CAD'] = cAD;
    data['CNY'] = cNY;
    data['HKD'] = hKD;
    data['INR'] = iNR;
    data['IDR'] = iDR;
    data['KRW'] = kRW;
    data['LAK'] = lAK;
    data['MYR'] = mYR;
    data['NZD'] = nZD;
    data['PKR'] = pKR;
    data['PHP'] = pHP;
    data['LKR'] = lKR;
    data['THB'] = tHB;
    data['VND'] = vND;
    data['BRL'] = bRL;
    data['CZK'] = cZK;
    data['DKK'] = dKK;
    data['EGP'] = eGP;
    data['ILS'] = iLS;
    data['KES'] = kES;
    data['KWD'] = kWD;
    data['NPR'] = nPR;
    data['NOK'] = nOK;
    data['RUB'] = rUB;
    data['SAR'] = sAR;
    data['RSD'] = rSD;
    data['ZAR'] = zAR;
    data['SEK'] = sEK;
    return data;
  }
}
